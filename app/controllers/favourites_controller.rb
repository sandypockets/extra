class FavouritesController < ApplicationController

  before_action :logged_in, except: :show

  def show; end

  def create
    @story = Story.find(params[:story_id])
    @favourite = @story.favourites.new
    @favourite.user = @current_user
    @favourite.save
    redirect_to story_path(@story)
  end

  def destroy
    @story = Story.find(params[:story_id])
    @story.favourites.where(user: @current_user).delete_all
    redirect_to story_path(@story)
  end

end
