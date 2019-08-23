class CompanysController < ApplicationController
  def index
    # TODO : 分頁
    @companys = Company.actived.order(:id)
  end

  def show
    @company = Company.actived.includes(:jobs).find_by(id: params[:id])
    render_404 if @company.nil?
  end
end
