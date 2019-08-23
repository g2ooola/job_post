module AdminHelper
  def edit_company_botton(company)
    content_tag(:div, class: 'btn') do
      concat link_to('Manage Company Info', edit_admin_company_path(company))
    end
  end

  def new_job_botton
    content_tag(:div, class: 'btn') do
      concat link_to('New Job', new_admin_job_path)
    end
  end
end