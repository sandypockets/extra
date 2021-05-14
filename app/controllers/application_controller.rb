class ApplicationController < ActionController::Base

  before_action :find_current_user

  # Make method available to other views
  helper_method :has_session?

  def logged_in
    redirect_to new_session_path unless has_session?
  end

  def find_current_user
    @current_user = (User.find(session[:user_id]) if has_session?)
  end

  def has_session?
    session[:user_id].present?
  end

  def check_admin
    @user = find_current_user
    if @user.present? and @user.is_admin?

    else
      redirect_to root_path
    end
  end

end
