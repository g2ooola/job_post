class CompanysController < ApplicationController
  def index
    # TODO : 分頁
    @companys = Company.all
  end

  def show
    @company = Company.includes(:jobs).find_by(id: params[:id])
    render_404 if @company.nil?
  end
end
