require_dependency 'auto_completes_controller'

module RedmineContacts
  module Patches
    module AutoCompletesControllerPatch
      def self.included(base)
        base.send(:include, InstanceMethods)
      end

      module InstanceMethods
        def contact_tags
          @name = params[:q].to_s
          @tags = Contact.available_tags :name_like => @name, :limit => 10
          render :layout => false, :partial => 'tag_list'
        end

        def tags
          klass = Object.const_get(params[:taggable_type].camelcase)
          @name = params[:q].to_s
          @tags = klass.all_tag_counts(:conditions => ["#{ActsAsTaggableOn::Tag.table_name}.name LIKE ?", "%#{@name}%"], :limit => 10)
          render :layout => false, :partial => 'tag_list'
        end

        def contacts
          @contacts = []
          q = (params[:q] || params[:term]).to_s.strip
          if q.present?
            scope = Contact.scoped({}) 
            scope = scope.scoped.limit(params[:limit] || 10)
            scope = scope.scoped.companies if params[:is_company]
            scope = scope.joins(:projects).uniq.where(Contact.visible_condition(User.current))
            @contacts = scope.by_project(@project).by_name(q).sort!{|x, y| x.name <=> y.name }
          end
          render :layout => false, :partial => 'contacts'
        end

        def companies
          @companies = []
          q = (params[:q] || params[:term]).to_s.strip
          if q.present?
            scope = Contact.scoped({}) 
            scope = scope.scoped.limit(params[:limit] || 10)
            @companies = scope.visible.by_project(@project).companies.like_by(:first_name, q).sort!{|x, y| x.name <=> y.name }
          end
          render :layout => false, :partial => 'companies'
        end

      end
    end
  end
end

unless AutoCompletesController.included_modules.include?(RedmineContacts::Patches::AutoCompletesControllerPatch)
  AutoCompletesController.send(:include, RedmineContacts::Patches::AutoCompletesControllerPatch)
end
