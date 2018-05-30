class CommentsController < ApplicationController
  def create
    @comment = Comment.new(content: comment_params[:content], article_id: article_params[:article_id], user: current_user)
    @comment.update(approval:true) if current_user.editor?
    if @comment.save
      flash_for_comments(current_user)
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

  def flash_for_comments(user)
    case user.role
    when 'editor'
      flash[:notice] = "Comment was successfully published"
    else
      flash[:notice] = "Comment was successfully saved and sent for approval"
    end
  end
end
