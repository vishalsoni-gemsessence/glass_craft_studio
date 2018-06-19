module Spree
  module SpreeApplicationHelper
    def display_error_message(object, field)
      if object.errors.present? and object.errors.messages[field.to_sym].present? and object.errors.messages[field.to_sym].first
        content_tag :div, class: "is-invalid invalid-feedback subsection-sm" do
          "#{object.errors.messages[field.to_sym].first}"
        end
      end
    end

    def display_flash_message(flash)
      rel = '<script type="text/javascript"> '
      rel += "$( window ).on('load', function() {"
      flash.each do |type, message|
        next if type == "timedout"
        notify_type = notify_type(type)
        notify_class = notify_class(type)
        rel += "notification('topright', '#{notify_type}', '#{notify_class}', '#{notify_type.try(:titlecase)}', \"#{message}\");  "
      end
      rel += "});"
      rel += "</script>"
      rel.html_safe
    end

    def get_dimension(variant)
      if(!variant.height.present? && !variant.width.present?)
        Spree.t(:"no_dimension_available")
      else
        "#{variant.height} cm x #{variant.width} cm"
      end 
    end

    def  get_weight_in_kg(weight)
      "#{weight} kg"
    end

    def render_snippet(slug)
      page = Spree::Page.find_by_slug(slug)
      raw page.body if page
    end
    
    private
      def notify_type(flash_type)
        case flash_type.to_sym
          when :success, :notice
            "success"
          when :error, :alert, :registration_error
            "error"
          when :info
            "info"
        end
      end

      def notify_class(flash_type)
        case flash_type.to_sym
          when :success, :notice
            "fa fa-check-circle vd_green"
          when :error, :alert
            "fa fa-times-circle vd_red"
          when :info
            "fa fa-exclamation-circle vd_yellow"
        end
      end
  end
end