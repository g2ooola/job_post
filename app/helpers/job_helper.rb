module JobHelper

  def job_grid(jobs)
    content_tag(:div, class: 'grid') do
      jobs.each do |job|
        concat job_grid_item(job)
      end
    end
  end

  def job_grid_item(job)
    link_to(job_path(job)) do
      content_tag(:div, class: 'job-grid-item grid-item') do
        concat content_tag(:div, "name: #{job.name}")
        concat content_tag(:div, "content: #{job.content}")
      end
    end
  end

  def job_list(jobs)
    content_tag(:div, class: 'list') do
      jobs.each do |job|
        concat job_list_item(job)
      end
    end
  end

  def job_list_item(job)
    link_to(job_path(job)) do
      content_tag(:div, class: 'list-item') do
        concat content_tag(:spin, "name: #{job.name}")
        concat content_tag(:spin, "(#{job.company.name})")
        concat content_tag(:spin, "content: #{job.content}")
      end
    end
  end

  def show_job(job)
    content_tag(:div, class: 'job-info') do
      concat content_tag(:div, "name: #{job.name}")
      concat content_tag(:div, "company: #{job.company.name}")
      concat salary_range(job)
      concat content_tag(:div, "content: #{job.content}")
      concat content_tag(:div, "condition: #{job.condition}")
      concat content_tag(:div, "welfare: #{job.welfare}")
    end
  end

  def salary_range(job)
    content_tag(:div, class: 'salary-range') do
      concat content_tag(:spin, 'salary range : ')
      concat content_tag(:spin, job.salary_range['from'])
      concat content_tag(:spin, ' ~ ')
      concat content_tag(:spin, job.salary_range['to'])
      concat content_tag(:spin, " ( #{job.salary_range['period']} ) ")
    end
  end

  def apply_botton(job)
    content_tag(:div, class: 'apply_idv') do
      concat link_to('Apply', apply_path(job.id))
    end
  end

end
