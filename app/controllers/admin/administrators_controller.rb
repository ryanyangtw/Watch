class Admin::AdministratorsController < AdminController


  def new_session

    if logged_in?
      redirect_to admin_brands_path
    else
      render 'admin/administrators/sign_in'
    end
  end

  def create_session

    administrator = Administrator.find_by(account: params[:account])
    if administrator && administrator.authenticate(params[:password])
      session[:administrator_id] = administrator.id
      flash[:notice] = "成功登入"
      redirect_to admin_brands_path
    else
      flash[:error] = "Sorry, something is wrong"
      redirect_to admin_path
    end
  end

  def destroy_session
    session[:administrator_id] = nil
    flash[:notice] = "成功登出"
    redirect_to root_path
  end

end
