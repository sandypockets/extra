class StoriesController < ApplicationController

  # Stories list page (also homepage)
  def index
    # Topic filtering
    @topic = params[:topic]
    @stories = if @topic.present?
                 Story.where(topic: @topic)
               else
                 Story.all
               end
  end

  def new
    @story = Story.new
  end

  def create
    @story = Story.new(form_params)
    if @story.save
      redirect_to root_path
    else
      render 'new'
    end
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
    if @story.update(form_params)
      redirect_to story_path(@story)
    else
      render 'edit'
    end
  end

  def form_params
    params.require(:story).permit(:title, :topic, :body)
  end

end
