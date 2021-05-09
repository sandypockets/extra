class UsersController < ApplicationController

  def index
    @user = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(form_params)
  end

  def show
    @user = User.find(params[:id])
  end

end
