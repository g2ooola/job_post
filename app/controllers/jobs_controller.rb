class JobsController < ApplicationController
  def index
    # TODO : page
    @jobs = Job.includes(:company)
  end

  def show
    @job = Job.includes(:company).find_by(id: params[:id])
    render_404 if @job.nil?
  end
end
