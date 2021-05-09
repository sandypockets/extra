class SessionsController < ApplicationController

  # Login form
  def new; end

  # Login action
  def create
    @form_data = params.require(:session)
    @email = @form_data[:email]
    @password = @form_data[:password]
    @user = User.find_by(email: @email).try(:authenticate, @password)
    if @user.present?
      session[:user_id] = @user.id
      redirect_to root_path
    else
      render 'sessions/new'
    end
  end

  # Logout
  def destroy
    reset_session
    redirect_to root_path
  end

end
