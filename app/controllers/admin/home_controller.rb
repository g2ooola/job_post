class Admin::HomeController < Admin::ApplicationController
  skip_before_action :login_check

  def need_login
    render json: {notice: 'login to continue' }
  end

  def login
    admin = Admin.find_by(id: params[:id])
    if admin
      login_current_admin(admin)
      redirect_to admin_company_path(admin.company)
    else
      redirect_to action: :need_login
    end
  end

  def logout
    logout_current_admin
    redirect_to action: :need_login
  end
end