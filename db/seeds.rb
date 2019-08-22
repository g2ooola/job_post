# Admin
admin_datas = (0...7).step.map do |i|
  {name: "admin#{i}", email: "admin#{i}@email.com"}
end
admins = Admin.create(admin_datas)

# Company
admin_ids = admins.pluck(:id)
company_datas = admin_ids.map do |admin_id|
  {
    name: "company#{admin_id}",
    admin_id: admin_id,
    media_links: [
      {title: "media_#{admin_id}_0", link: "http://media-1.com/#{admin_id}/0"},
      {title: "media_#{admin_id}_1", link: "http://media-2.com/#{admin_id}/1"},
      {title: "media_#{admin_id}_2", link: "http://media-3.com/#{admin_id}/2"},
    ],
    interduction: "hi, I'm company for #{admin_id}",
    philosophy: 'To infinity and beyond!',
    welfare: 'Free Wifi'
  }
end
companys = Company.create(company_datas)

# Job
company_ids = companys.pluck(:id)
job_datas = []
company_ids.map do |company_id|
  5.times do |i|
    job_datas << {
      name: "Job #{i}",
      company_id: company_id,
      salary_range: {period: 'monthly', from: i*10, to: (i+3)*10},
      content: 'job detail',
      condition: 'love music',
      welfare: 'Mechanical keyboard'
    }
  end
end
jobs = Job.create(job_datas)