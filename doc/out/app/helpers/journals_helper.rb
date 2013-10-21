# encoding: utf-8
#
# Redmine - project management software
# Copyright (C) 2006-2012  Jean-Philippe Lang
#
# This program is free software; you can redistribute it and/or
# modify it under the terms of the GNU General Public License
# as published by the Free Software Foundation; either version 2
# of the License, or (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software
# Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.

module JournalsHelper
  #---b:AndreyM---
  def has_quote(note)
     if note.include? 'писал(а):'
         true
     else
         false
     end
  end
  def show_qoute(note,user)
    #return note
    @wt_ind=note.index('писал(а)')
    @q_author_str=note[0..@wt_ind-1]
    @q_auth_firstname=strip_tags(@q_author_str.split(" ")[0])
    @q_auth_lastname=strip_tags(@q_author_str.split(" ")[1])
    @q_mes_str="***"+note
    @q_auth_quota=strip_tags(note[note.index("<blockquote>")..note.index("</blockquote>")])
    @q_user_mes  = strip_tags(note[note.index("</blockquote>")..note.size])
    @q_auth_user       = User.select("*").where("firstname=? AND lastname=?",@q_auth_firstname.mb_chars.strip, @q_auth_lastname.mb_chars.strip)
    ##logger.info("LOG:"+@q_auth_user )
    @q_auth_text_color = @q_auth_user.first.text_color  if  not @q_auth_user.blank?
    @q_auth_fon_color  = @q_auth_user.first.fon_color   if  not @q_auth_user.blank?
    q_content = ""
    q_content << "<div style='width:67%;display:block;border:1px solid black;padding:5px;background:#{@q_auth_fon_color};color:#{@q_auth_text_color}'>"

    q_content << "<img src='/images/comment-new.png' width='40px' height='40px' />"

    q_content << "<p><strong>"+@q_auth_firstname+" "+ @q_auth_lastname+ " писал(а):</strong></p>"
    q_content << "<div >"+@q_auth_quota+"</div>"

    q_content << "</div><br>"

    q_user_content = ""
    q_user_content << "<div style='width:67%;margin-left:40px;padding:5px;border:1px dotted black;background-color:#{user.fon_color};color:#{user.text_color}'>"
    q_user_content << "<img style='display:inline' src='/images/comment-new.png' width='40p'x height='40px' />"
    q_user_content << "<p><strong>"+user.firstname+" "+user.lastname+"</strong></p>"
    q_user_content << "<div >"+@q_user_mes+"</div>"
    q_user_content << "</div><br>"

    q_content + q_user_content
    #      #-----note[@wt_ind+11..note.index("\n")]
    ### "!!!!@q_auth_quota=#{@q_auth_quota}!!!!<br><br>!!!#{ @q_user_mes}!!!"
    ###"!!!!!!!!!!!!!!!!!#{@q_auth_firstname}!!!!!#{@q_auth_lastname}!!!!<br><br>!!!!!#{@q_auth_text_color}!!!!!!!!!#{@q_auth_fon_color}!!#{@q_mes_str}".html_safe()
  end
  def filter_multi_user (notes)
    notes.gsub(/(-)*END(-)*/,"\n\n").gsub(/(---)*/,"")
  end
  #---e:AndreyM---
  def render_notes(issue, journal, options={})
    content = ''
    editable = User.current.logged? && (User.current.allowed_to?(:edit_issue_notes, issue.project) || (journal.user == User.current && User.current.allowed_to?(:edit_own_issue_notes, issue.project)))
    links = []
    journal.notes=filter_multi_user(journal.notes); #--add AndreyM for multi comment task
    if !journal.notes.blank?
      links << link_to(image_tag('chit-new.png'),
                       {:controller => 'journals', :action => 'new', :id => issue, :journal_id => journal},
                       :remote => true,
                       :method => 'post',
                       :title => l(:button_quote)) if options[:reply_links]
      #--add andreyM
      links << link_to('Цитировать',
                       {:controller => 'journals', :action => 'new', :id => issue, :journal_id => journal},
                       :remote => true,
                       :method => 'post',
                       :title => l(:button_quote)) if options[:reply_links]
      links << link_to_in_place_notes_editor(image_tag('edit-new.png'), "journal-#{journal.id}-notes",
                                             { :controller => 'journals', :action => 'edit', :id => journal, :format => 'js' },
                                                :title => l(:button_edit)) if editable
      #--add andreyM
      links << link_to_in_place_notes_editor('Редактировать', "journal-#{journal.id}-notes",
                                             { :controller => 'journals', :action => 'edit', :id => journal, :format => 'js' },
                                             :title => l(:button_edit)) if editable
    end
    content << content_tag('div', links.join(' ').html_safe, :class => 'contextual') unless links.empty?
    #--b:andreyM--
    if has_quote(journal.notes)
      #content << "<div class='user_color_mes' style='width:67%;border:1px solid black;padding:5px;background:#{journal.user.fon_color};color:#{journal.user.text_color}'> "
      content << show_qoute( textilizable(journal, :notes),journal.user)
      #content <<  textilizable(journal, :notes)
      #content << "</div>"
    else
      content << "<div class='user_color_mes' style='width:67%;border:1px solid black;padding:5px;background:#{journal.user.fon_color};color:#{journal.user.text_color}'> "
      content << textilizable(journal, :notes)
      content << "</div>"
    end

    #--e:andreyM--
    css_classes = "wiki"
    css_classes << " editable" if editable
    content_tag('div', content.html_safe, :id => "journal-#{journal.id}-notes", :class => css_classes)
  end

  def link_to_in_place_notes_editor(text, field_id, url, options={})
    onclick = "$.ajax({url: '#{url_for(url)}', type: 'get'}); return false;"
    link_to text, '#', options.merge(:onclick => onclick)
  end
end
