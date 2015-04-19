class AdminController < ApplicationController

  #layout "admin"

  #before_action :authenticate_administrator!
  #before_action :admin_required, :except => [:new_session, :create_session]
  before_action :require_administrator, except: [:new_session, :create_session]

  

  helper_method :current_administrator, :logged_in?

  def require_administrator
    access_denied unless logged_in?
  end

  def access_denied
    flash[:error] = "Must be login to do that"
    redirect_to admin_path
  end

  def logged_in?
    !!current_administrator
  end

  def current_administrator
    @current_administrator ||= find_administrator
  end

  def find_administrator
    administrator = Administrator.find_by(id: session[:administrator_id])
  end



end