class CommentsController < ApplicationController
  def create
    @comment = Comment.new(content: comment_params[:content], article_id: article_params[:article_id])
    if @comment.save
      flash[:notice] = "Comment successfully saved and sent for approval"
    else
      flash[:alert] = @comment.errors.full_messages.first
    end
    redirect_to article_path(article_params[:article_id])
  end

  private
  def comment_params
    params.require(:comment).permit(:content)
  end

  def article_params
    params.permit(:article_id)
  end
end
