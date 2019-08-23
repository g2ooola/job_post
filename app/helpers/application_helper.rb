module ApplicationHelper
  def show_flash(flash)
    content_tag(:div) do
      flash.each do |key, value|
        concat content_tag(:div, "#{key}: #{value}")
      end
    end
  end
end
