# Created L/21/05/2012
# Updated D/03/02/2013
# Version 3
#
# Copyright 2012-2013 | Fabrice Creuzot (luigifab) <code~luigifab~info>
# https://redmine.luigifab.info/projects/redmine/wiki/apijs
#
# This program is free software, you can redistribute it or modify
# it under the terms of the GNU General Public License (GPL) as published
# by the free software foundation, either version 2 of the license, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but without any warranty, without even the implied warranty of
# merchantability or fitness for a particular purpose. See the
# GNU General Public License (GPL) for more details.

class FilesHook < Redmine::Hook::ViewListener
  def view_layouts_base_html_head(context = { })
    stylesheet_link_tag('app.min.css', 'styles.css', :plugin => 'redmine_apijs', :media => 'screen') +
      javascript_include_tag('app.min.js', :plugin => 'redmine_apijs')
  end
end