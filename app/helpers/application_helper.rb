module ApplicationHelper
  
  def icon(icon_name, text)
    content_tag(:span, fa_icon(icon_name), class: "icon") + content_tag(:span, text)
  end

  def class_for flash_type
    { success: 'is-primary', error: 'is-danger', notice: 'is-warning'}[flash_type.to_sym]
  end

  def flash_messages(opts = {})
    flash.map do |msg_type, message|
      content_tag(:div, class: "message #{class_for(msg_type)}") do
        content_tag(:div, class: "message-body") do
          (message).html_safe
        end
      end
    end.join.html_safe
  end

end