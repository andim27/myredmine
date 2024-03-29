require_dependency 'query'

module RedmineContacts
  module Patches
    module IssueQueryPatch
      def self.included(base)
        base.send(:include, InstanceMethods)
        base.send(:include, ContactsHelper)

        base.class_eval do
          unloadable

          alias_method_chain :available_filters, :contacts

          base.add_available_column(QueryColumn.new(:contacts))

        end
      end


      module InstanceMethods
        def sql_for_contacts_field(field, operator, value)
          compare = operator == '=' ? 'IN' : 'NOT IN'
          contacts_select = "SELECT contacts_issues.issue_id FROM contacts_issues
              WHERE contacts_issues.contact_id IN (#{value.join(',')})"

          "(#{Issue.table_name}.id #{compare} (#{contacts_select}))"    
        end  

        def sql_for_companies_field(field, operator, value) 
          compare = operator == '=' ? 'IN' : 'NOT IN'
          employes_select = "SELECT contacts_issues.issue_id FROM contacts_issues
              WHERE contacts_issues.contact_id IN
              ( SELECT c_1.id from #{Contact.table_name}
                LEFT OUTER JOIN #{Contact.table_name} AS c_1 ON c_1.company = #{Contact.table_name}.first_name
                WHERE #{Contact.table_name}.id IN (#{value.join(',')})
              )"
          companies_select = "SELECT contacts_issues.issue_id FROM contacts_issues
              WHERE contacts_issues.contact_id IN (#{value.join(',')})"

          "((#{Issue.table_name}.id #{compare} (#{employes_select}))
          OR (#{Issue.table_name}.id #{compare} (#{companies_select})))"
        end


        def available_filters_with_contacts
          if @available_filters.blank? && (project.blank? || User.current.allowed_to?(:view_contacts, project)) 
            select_fields = "#{Contact.table_name}.first_name, #{Contact.table_name}.last_name, #{Contact.table_name}.middle_name, #{Contact.table_name}.is_company, #{Contact.table_name}.id"
            available_filters_without_contacts.merge!({ 'contacts' => {
                :type => :list,
                :name => l(:field_contacts),
                :order  => 6,
                :values => contacts_for_select(project, :limit => 500) }}) if !available_filters_without_contacts.key?("contacts")

            available_filters_without_contacts.merge!({ 'companies' => {
                :type   => :list,
                :name => l(:field_companies),
                :order  => 6,
                :values => contacts_for_select(project, :limit => 500, :is_company => true)}}) if !available_filters_without_contacts.key?("companies")
          else
            available_filters_without_contacts
          end
          @available_filters
        end
      end
    end
  end
end

if Redmine::VERSION::BRANCH == 'devel' && Redmine::VERSION::REVISION > 11281 
  unless IssueQuery.included_modules.include?(RedmineContacts::Patches::IssueQueryPatch)
    IssueQuery.send(:include, RedmineContacts::Patches::IssueQueryPatch)
  end
else
  unless Query.included_modules.include?(RedmineContacts::Patches::IssueQueryPatch)
    Query.send(:include, RedmineContacts::Patches::IssueQueryPatch)
  end
end
