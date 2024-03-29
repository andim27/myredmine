# encoding: utf-8
module ContactsHelper

  def collection_for_visibility_select
    [[l(:label_contacts_visibility_project), Contact::VISIBILITY_PROJECT],
     [l(:label_contacts_visibility_public), Contact::VISIBILITY_PUBLIC],
     [l(:label_contacts_visibility_private), Contact::VISIBILITY_PRIVATE]]
  end
  
  def tag_url(tag_name, options={})
    {:controller => 'contacts',
     :action => 'index', 
     :set_filter => 1, 
     :project_id => @project,
     :fields => [:tags], 
     :values => {:tags => [tag_name]},
     :operators => {:tags => '='}}.merge(options)   
  end

  def tag_link(tag_name, options={})
    style = RedmineContacts.settings[:monochrome_tags].to_i > 0 ? {} : {:style => "background-color: #{tag_color(tag_name)}"}
    tag_count = options.delete(:count)
    tag_title = tag_count ? "#{tag_name} (#{tag_count})" : tag_name
    link = link_to tag_title, tag_url(tag_name), options
    content_tag(:span, link, {:class => "tag"}.merge(style))
  end

  def tag_color(tag_name)
    "##{"%06x" % (tag_name.hash % 0xffffff).to_s}"
  end

  def tag_links(tag_list, options={})
    content_tag(
              :span, 
              tag_list.map{|tag| tag_link(tag, options)}.join(' ').html_safe,
              :class => "tag_list") if tag_list
  end

  def authorized_for_permission?(permission, project, global = false)
    User.current.allowed_to?(permission, project, :global => global)
  end  
  
  def skype_to(skype_name, name = nil)
    return link_to skype_name, 'skype:' + skype_name + '?call' unless skype_name.blank?
  end
  
  def contacts_for_select(project, options = {})
    scope = Contact.scoped({}) 
    scope = scope.scoped.limit(options[:limit] || 500)
    scope = scope.scoped.companies if options.delete(:is_company)
    scope = scope.joins(:projects).uniq.where(Contact.visible_condition(User.current))
    scope.by_project(project).sort!{|x, y| x.name <=> y.name }.collect {|m| [m.name, m.id.to_s]}
  end

  def link_to_remote_list_update(text, url_params)
    link_to_remote(text,
      {:url => url_params, :method => :get, :update => 'contact_list', :complete => 'window.scrollTo(0,0)'},
      {:href => url_for(:params => url_params)}
    )
  end

  def note_source_url(note_source, options = {})
    polymorphic_path(note_source, options.merge(:project_id => @project))
    # return {:controller => note_source.class.name.pluralize.downcase, :action => 'show', :project_id => @project, :id => note_source.id }
  end
       
  def link_to_source(note_source, options={}) 
    return link_to note_source.name, note_source_url(note_source, options) 
  end

  def select_contact_tag(contact, options={})
    field_id = options.delete(:field_id) || "contact_id"
    field_name = options.delete(:field_name) || "contact_id"
    display_field = !!options.delete(:display_field)
    span_id = field_id + '_selected_contact'
    link_id = field_id + '_edit_link'
    s = ""
    s << content_tag(:span, contact.to_s, :id => span_id)
    s << link_to(image_tag("edit.png", :alt => l(:label_edit), :style => "vertical-align:middle;"), "#", 
            :onclick => "$('##{span_id}').hide(); $(this).hide(); $('##{field_id}').show(); $('##{field_id}').val(''); return false;",
            :id => link_id,
            :style => display_field ? "display: none;" : "")
    s << text_field_tag(field_name, contact.blank? ? '' : contact.id, :style => display_field ? "" : "display: none;", :placeholder => l(:label_contact_search), :id =>  field_id) 
    s << javascript_tag("observeAutocompleteField('#{field_id}', '#{escape_javascript auto_complete_contacts_path(:project_id => @project)}')")     
    s << javascript_tag("$(document).ready(function() {
                        function #{field_id}_contact( message ) {
                            $('##{span_id}').text( message );
                            $('##{span_id}').show();
                            $('##{span_id}').scrollTop( 0 );
                            $('##{field_id}').hide();
                            $('##{link_id}').show();
                        }

                            $('##{field_id}').autocomplete({
                              source: '#{escape_javascript auto_complete_contacts_path(:project_id => @project)}',
                              select: function( event, ui ) {
                                #{field_id}_contact( ui.item ?
                                    ui.item.label:
                                    'Nothing selected, input was ' + this.value);
                              },
                              minLength: 1
                            });
                          });")

    s.html_safe
  end

  def avatar_to(obj, options = { })  
    # "https://avt.appsmail.ru/mail/sin23matvey/_avatar"

    options[:size] ||= "64"
    options[:width] ||= options[:size]
    options[:height] ||= options[:size]
    options.merge!({:class => "gravatar"})

    obj_icon = obj.is_a?(Contact) ? (obj.is_company ? "company.png" : "person.png") : (obj.is_a?(Deal) ? "deal.png" : "unknown.png")

    # return image_tag(obj_icon, options.merge({:plugin => "redmine_contacts"})) if Rails::env == "development"

    if obj.is_a?(Deal)
      image_tag(obj_icon, options.merge({:plugin => "redmine_contacts"}))
    elsif obj.is_a?(Contact) && (avatar = obj.avatar) && avatar.readable?
      avatar_url = url_for :controller => "attachments", :action => "contacts_thumbnail", :id => avatar, :size => options[:size]
      if options[:full_size]
        link_to(image_tag(avatar_url, options), :controller => 'attachments', :action => 'download', :id => avatar, :filename => avatar.filename)
      else
        image_tag(avatar_url, options)
      end  
    elsif obj.respond_to?(:facebook) &&  !obj.facebook.blank?
      image_tag("https://graph.facebook.com/#{obj.facebook.gsub('.*facebook.com\/','')}/picture?type=square#{'&return_ssl_resources=1' if (request && request.ssl?)}", options)
    elsif obj.is_a?(Contact) && obj.primary_email && obj.primary_email =~ %r{^(.*)@mail.ru$}  
      image_tag("http#{'s' if (request && request.ssl?)}://avt.appsmail.ru/mail/#{$1}/_avatar", options)
    elsif obj.respond_to?(:twitter) &&  !obj.twitter.blank?
      image_tag("https://api.twitter.com/1/users/profile_image?screen_name=#{obj.twitter}&size=bigger", options)
    elsif Setting.gravatar_enabled? && obj.is_a?(Contact) && obj.primary_email && !obj.is_company
      # options.merge!({:ssl => (request && request.ssl?), :default => "#{request.protocol}#{request.host_with_port}/plugin_assets/redmine_contacts/images/#{obj_icon}"})
      # gravatar(obj.primary_email.downcase, options) rescue nil      
      avatar("<#{obj.primary_email}>", options)
    else
      image_tag(obj_icon, options.merge({:plugin => "redmine_contacts"}))
    end

  end

  def contact_tag(contact, options={})
    avatar_size = options.delete(:size) || 16
    if contact.visible?
      contact_avatar = link_to(avatar_to(contact, :size => avatar_size), contact_path(contact, :project_id => @project), :id => "avatar")
      contact_name = link_to_source(contact, :project_id => @project)
    else
      contact_avatar = avatar_to(contact, :size => avatar_size)
      contact_name = contact.name
    end  

    case options.delete(:type) 
    when "avatar"
      contact_avatar.html_safe
    when "plain"
      contact_name.html_safe
    else
      content_tag(:span, "#{contact_avatar} #{contact_name}".html_safe, :class => "contact")  
    end


  end
  
  def link_to_add_phone(name)             
    fields = '<p>' + label_tag(l(:field_contact_phone)) + 
      text_field_tag( "contact[phones][]", '', :size => 30 ) + 
      link_to_function(l(:label_remove), "removeField(this)") + '</p>'
    link_to_function(name, h("addField(this, '#{escape_javascript(fields)}' )"))
  end    
  
  def link_to_task_complete(url, bucket)
    onclick = "this.disable();"
    onclick << %Q/$("#{dom_id(pending, :name)}").style.textDecoration="line-through";/
    onclick << remote_function(:url => url, :method => :put, :with => "{ bucket: '#{bucket}' }")
  end   
  
  def render_contact_projects_hierarchy(projects)  
    s = ''
    project_tree(projects) do |project, level| 
      s << "<ul>"
      name_prefix = (level > 0 ? ('&nbsp;' * 2 * level + '&#187; ') : '')
        url = {:controller => 'contacts_projects',
               :action => 'delete',
               :disconnect_project_id => project.id,
               :project_id => @project.id,
               :contact_id => @contact.id}
      
      s << "<li id='project_#{project.id}'>" + name_prefix + link_to_project(project)

      s += ' ' + link_to(image_tag('delete.png'),
                                 url, 
                                 :remote => true,
                                 :method => :delete, 
                                 :style => "vertical-align: middle",
                                 :class => "delete",
                                 :title => l(:button_delete)) if (projects.size > 1 && authorize_for(:contacts, :edit) )       
      s << "</li>"                          

      s << "</ul>"
    end
    s.html_safe
  end  
  
  def contact_to_vcard(contact)  
    return false unless ContactsSetting.vpim?

    require 'vpim/vcard'

    card = Vpim::Vcard::Maker.make2 do |maker|

      maker.add_name do |name|
        name.prefix = ''
        name.given = contact.first_name.to_s
        name.family = contact.last_name.to_s
        name.additional = contact.middle_name.to_s
      end

      maker.add_addr do |addr|
        addr.preferred = true
        addr.street = contact.address.to_s.gsub("\r\n"," ").gsub("\n"," ") 
      end
      
      maker.title = contact.job_title.to_s
      maker.org = contact.company.to_s   
      maker.birthday = contact.birthday.to_date unless contact.birthday.blank?
      maker.add_note(contact.background.to_s.gsub("\r\n"," ").gsub("\n", ' '))
       
      maker.add_url(contact.website.to_s)

      contact.phones.each { |phone| maker.add_tel(phone) }
      contact.emails.each { |email| maker.add_email(email) }
    end   
    avatar = contact.attachments.find_by_description('avatar')  
    card = card.encode.sub("END:VCARD", "PHOTO;BASE64:" + "\n " + [File.open(avatar.diskfile).read].pack('m').to_s.gsub(/[ \n]/, '').scan(/.{1,76}/).join("\n ") + "\nEND:VCARD") if avatar && avatar.readable?
    
    card.to_s 	
    
  end  
  
  def tagsedit_for(field_id, available_tags='')
    unless @heads_for_heads_for_tagsedit_included
      content_for :header_tags do
        javascript_include_tag(:"tag-it", :plugin => 'redmine_contacts') +
        stylesheet_link_tag(:"jquery.tagit.css", :plugin => 'redmine_contacts')
      end
      @heads_for_heads_for_tagsedit_included = true
    end
    javascript_tag("$('#{field_id}').tagit({availableTags: ['#{available_tags}'], allowSpaces: true, placeholderText: '#{l(:label_add_tag)}', caseSensitive: false, removeConfirmation: true});")
  end


  def render_contact_tooltip(contact, options={})
    @cached_label_company ||= l(:field_contact_company)
    @cached_label_job_title = contact.is_company ? l(:field_company_field) : l(:field_contact_job_title)
    @cached_label_phone ||= l(:field_contact_phone)
    @cached_label_email ||= l(:field_contact_email)
    
    emails = contact.emails.any? ? contact.emails.map{|email| "<span class=\"email\" style=\"white-space: nowrap;\">#{mail_to email}</span>"}.join(', ') : ''
    phones = contact.phones.any? ? contact.phones.map{|phone| "<span class=\"phone\" style=\"white-space: nowrap;\">#{phone}</span>"}.join(', ') : ''
    
    s = link_to_contact(contact, options) + "<br /><br />"
    s <<  "<strong>#{@cached_label_job_title}</strong>: #{contact.job_title}<br />" unless contact.job_title.blank?
    s <<  "<strong>#{@cached_label_company}</strong>: #{link_to(contact.contact_company.name, {:controller => 'contacts', :action => 'show', :id => contact.contact_company.id })}<br />" if !contact.contact_company.blank? && !contact.is_company
    s <<  "<strong>#{@cached_label_email}</strong>: #{emails}<br />" if contact.emails.any?
    s <<  "<strong>#{@cached_label_phone}</strong>: #{phones}<br />" if contact.phones.any?
    s.html_safe
  end
  
  def link_to_contact(contact, options={})
    s = ''
    html_options = {}
    html_options = {:class => 'icon icon-vcard'} if options[:icon] == true
    s << avatar_to(contact, :size => "16") if options[:avatar] == true
 		s << link_to_source(contact, html_options)

 		s << "(#{contact.job_title}) " if (options[:job_title] == true) && !contact.job_title.blank?
		s << " #{l(:label_at_company)} " if (options[:job_title] == true) && !(contact.job_title.blank? or contact.company.blank?) 
		if (options[:company] == true) and contact.contact_company
			s << link_to(contact.contact_company.name, {:controller => 'contacts', :action => 'show', :id => contact.contact_company.id })
		else
			h contact.company
		end
 		s << "(#{l(:field_contact_tag_names)}: #{contact.tag_list.join(', ')}) " if (options[:tag_list] == true) && !contact.tag_list.blank?
    s
  end

  def tagsedit_for(field_id, available_tags='')
    unless @heads_for_heads_for_tagsedit_included
      content_for :header_tags do
        javascript_include_tag(:"tag-it", :plugin => 'redmine_contacts') +
        stylesheet_link_tag(:"jquery.tagit.css", :plugin => 'redmine_contacts')
      end
      @heads_for_heads_for_tagsedit_included = true
    end
    javascript_tag("$('#{field_id}').tagit({availableTags: ['#{available_tags}'], allowSpaces: true, placeholderText: '#{l(:label_add_tag)}', caseSensitive: false, removeConfirmation: true});")
  end
  
end
