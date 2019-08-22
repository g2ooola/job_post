module CompanyHelper
  def company_grid(companys)
    content_tag(:div, class: 'grid') do
      companys.each do |company|
        concat company_grid_item(company)
      end
    end
  end

  def company_grid_item(company)
    link_to(company_path(company)) do
      content_tag(:div, class: 'grid-item') do
        concat content_tag(:div, "name: #{company.name}")
        concat content_tag(:div, "jobs_count: #{company.jobs_count}")
        concat content_tag(:div, "interduction: #{company.interduction}")
      end
    end
  end

  def company_list(companys)
    content_tag(:div, class: 'list') do
      companys.each do |company|
        concat company_list_item(company)
      end
    end
  end

  def company_list_item(company)
    link_to(company_path(company)) do
      content_tag(:div, class: 'list-item') do
        concat content_tag(:spin, "name: #{company.name}")
        concat content_tag(:spin, "jobs_count: #{company.jobs_count}")
        concat content_tag(:spin, "interduction: #{company.interduction}")
      end
    end
  end

  def show_company(company)
    content_tag(:div, class: 'company-info') do
      concat content_tag(:div, "name: #{company.name}")
      concat content_tag(:div, "jobs_count: #{company.jobs_count}")
      concat media_link_div(company.media_links)
      concat content_tag(:div, "interduction: #{company.interduction}")
      concat content_tag(:div, "philosophy: #{company.philosophy}")
      concat content_tag(:div, "welfare: #{company.welfare}")
    end
  end

  def media_link_div(media_links)
    content_tag(:div) do
      concat content_tag(:div, 'media links : ')
      media_links.each do |media_link|
        concat link_to(media_link['title'], media_link['link'], class: 'media-link', target: :blank)
      end
    end
  end

end
