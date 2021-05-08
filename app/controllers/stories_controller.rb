class StoriesController < ApplicationController

  # Stories list page (also homepage)
  def index
    @stories = Story.all
  end

  def new
    @story = Story.new
  end

  def create
    @story = Story.new(form_params)
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

  def edit
    @story = Story.find(params[:id])
  end

  def update
    @story = Story.find(params[:id])
    @story.update(form_params)
    redirect_to story_path(@story)
  end

  def form_params
    params.require(:story).permit(:title, :topic, :body)
  end

end
