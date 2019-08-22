class HomeController < ApplicationController
  def choice
    @company_choise = Company.choice
    @job_choise = Job.choice
  end
end
