class HomeController < ApplicationController
  def choice
    @company_choise = Company.actived_choice
    @job_choise = Job.actived_choice
  end
end
