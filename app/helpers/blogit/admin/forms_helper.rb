module Blogit
  module Admin
    module FormsHelper
      class FormBuilder < ActionView::Helpers::FormBuilder
        
        def field(options = {}, &block)
          options[:class] = Array(options[:class]) + [ "blogit_admin_form-field_wrapper" ]
          @template.content_tag(:div, options, &block)
        end
        
        def label(method, text = nil, options = {}, &block)
          options[:class] = Array(options[:class]) + [ 'blogit_admin_form-label']
          super
        end

        def text_field(method, options = {})
          options[:class] = Array(options[:class]) + [ 'blogit_admin_form-field' ]
          super
        end
  
        def text_area(method, options = {})
          options[:class] = Array(options[:class]) + 
            [ 'blogit_admin_form-editable_text_area' ]
          super
        end
  
      end
    end
  end
end