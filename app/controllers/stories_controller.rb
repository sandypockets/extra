class StoriesController < ApplicationController

  before_action :logged_in, except: [:index, :show]

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
    @story.user = @current_user
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
    @story.destroy if @story.user == @current_user
    redirect_to root_path
  end

  def edit
    @story = Story.find(params[:id])
    redirect_to root_path if @story.user != @current_user
  end

  def update
    @story = Story.find(params[:id])
    if @story.user == @current_user
      if @story.update(form_params)
        redirect_to story_path(@story)
      else
        render 'edit'
      end
    else
      redirect_to root_path
    end
  end

  def form_params
    params.require(:story).permit(:title, :topic, :body)
  end

end
