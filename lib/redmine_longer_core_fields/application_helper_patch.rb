require_dependency 'application_helper'

module PluginLongerCoreFields
  module ApplicationHelper
    def format_object(object, html=true, &block)
      if (object.class.name=='CustomValue' || object.class.name== 'CustomFieldValue') && object.custom_field
        f = object.custom_field.format.formatted_custom_value(self, object, html)
        if f.nil? || f.is_a?(String)
          f
        else
          if f.class.name=='Integer'
            number_with_delimiter(f)
          else
            super
          end
        end
      else
        super
      end
    end
  end
end
ApplicationHelper.prepend PluginLongerCoreFields::ApplicationHelper
ActionView::Base.prepend ApplicationHelper
