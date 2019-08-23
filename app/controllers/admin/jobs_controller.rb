class Admin::JobsController < Admin::ApplicationController
  def new
    @job = Job.new
  end

  def create
    @job = Job.new(permit_params.merge({company_id: current_admin.company.id}))
    if @job.save
      flash.notice = 'Job create success'
      redirect_to admin_company_path(@job.company_id)
    else
      flash.alert = 'Create Failed!'
      redirect_to action: :new
    end
  end

  def edit
    @job = Job.find(params[:id])
  end

  def update
    @job = Job.find(params[:id])

    if @job.update(permit_params)
      flash.notice = 'Job update success'
      redirect_to admin_company_path(@job.company_id)
    else
      flash.alert = 'Update Failed!'
      redirect_to action: :edit
    end
  end

  def destroy
    @job = Job.find(params[:id])
    @job.destroy

    flash.notice = "Job #{@job.id} - #{@job.name} destroy success"
    redirect_to admin_company_path(@job.company_id)
  end

  private

  def permit_params
    params
    .require(:job)
    .permit(:name, :active, :salary_range, :content, :condition, :welfare)
  end
end