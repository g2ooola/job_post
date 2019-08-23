class JobsController < ApplicationController
  def index
    # TODO : page
    @jobs = Job.actived.includes(:company).order(:id)
  end

  def show
    @job = Job.actived.includes(:company).find_by(id: params[:id])
    render_404 if @job.nil?
  end
end
