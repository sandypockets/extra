class StoriesController < ApplicationController

  # Stories list page (also homepage)
  def index
    @stories = Story.all
  end

  def new
    @story = Story.new
  end

  def create
    @story = Story.new(params.require(:story).permit(:title, :body, :topic))
    @story.save
    redirect_to root_path
  end

  def show
    @story = Story.find(params[:id])
  end

  def destroy
    @story = Story.find(params[:id])
    @story.destroy
    redirect_to root_path
  end

end
