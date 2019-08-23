class Admin::ApplicationController < ApplicationController
  before_action :login_check 

  protected
  def login_current_admin(admin)
    session[:current_admin] = admin.id
  end

  def logout_current_admin
    session.delete :current_admin
  end

  def current_admin
    @current_admin ||= Admin.find_by(id: session[:current_admin])
    # true
  end

  def login_check
    redirect_to admin_need_login_path unless current_admin
  end
end