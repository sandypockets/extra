class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(form_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to root_path
    else
      render 'users/new'
    end
  end

  def show
    @user = User.find_by(username: params[:id])
    @favourites = Favourite.all
    @fav_story = get_fav_stories
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to root_path
  end

  def edit
    @user = User.find_by(username: params[:id])
  end

  def update
    @user = User.find_by(username: params[:id])
    if @user.update(form_params)
      redirect_to user_path(@user)
    else
      render 'users/edit'
    end
  end

  def form_params
    params.require(:user).permit(:first_name, :last_name, :username, :email, :password, :password_confirmation, :avatar)
  end

end
