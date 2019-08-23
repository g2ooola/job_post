class HomeController < ApplicationController
  def choice
    @company_choise = Company.actived_sample(5)
    @job_choise = Job.actived_sample(10)
  end
end
