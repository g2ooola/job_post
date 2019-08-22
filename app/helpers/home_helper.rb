module HomeHelper
  def choice_banner(title, link_name, link)
    content_tag(:div, class: 'banner') do
      concat content_tag(:div, title, class: 'title')
      concat link_to(link_name, link, class: 'more')
    end
    
  end
end
