class Admin::CompanysController < Admin::ApplicationController
  def show
    @company = Company.find(params[:id])
    @jobs = @company.jobs
  end

  def edit
    @company = Company.find(params[:id])
  end

  def update
    @company = Company.find(params[:id])

    if @company.update(permit_params)
      flash.notice = 'Company update success'
      redirect_to action: :show
    else
      flash.alert = 'Update Failed!'
      redirect_to action: :edit
    end
  end

  private

  def permit_params
    params
    .require(:company)
    .permit(:name, :active, :media_link, :interduction, :philosophy, :welfare)
  end
end