Redmine::Plugin.register :redmine_longer_core_fields do
  name 'Redmine Longer Core Fields plugin'
  author 'Vincent ROBERT'
  description 'This is a minimalist plugin for Redmine which increase the length of core fields'
  version '1.0.0'
  url 'https://github.com/nanego/redmine_longer_core_fields'
  author_url 'mailto:contact@vincent-robert.com'
end

Rails.application.config.to_prepare do
  require_dependency 'redmine_longer_core_fields/issue_status_patch'
  require_dependency 'redmine_longer_core_fields/application_helper_patch'
end
