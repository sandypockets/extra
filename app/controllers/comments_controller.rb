class CommentsController < ApplicationController

  def create
    @story = Story.find(params[:story_id])
    @comment = @story.comments.new(params.require(:comment).permit(:body))
    @comment.user = @current_user
    @comment.save
    redirect_to story_path(@story)
  end

end
