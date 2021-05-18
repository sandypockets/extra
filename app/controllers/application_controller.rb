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
    redirect_to root_path unless @user.present? && @user.is_admin?
  end

  def find_admin_user
    @current_user = find_current_user
    if @current_user.present? && @current_user.is_admin?
      @current_user
    end
  end

  def get_fav_stories
    @user = User.find_by(username: params[:id])
    @user.favourites.each do |_fav|
      @story_id = @user.favourites.select(:story_id)
      @fav_story = Story.find_by(id: @story_id)
    end
  end

  # def is_admin
  #   false unless @current_user.is_admin == true
  # end

end
