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
    @story.destroy if @story.user == @current_user || @current_user.is_admin?
    redirect_to root_path
  end

  def edit
    @story = Story.find(params[:id])
    redirect_to root_path if @story.created_at < 2.hours.ago
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
    params.require(:story).permit(:title, :topic, :body, :image)
  end

  def find_user_by_story
    @username = Story.user.username
    @user = User.find_by(username: @username)
  end

end
