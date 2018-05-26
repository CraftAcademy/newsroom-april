class CommentsController < ApplicationController
  def create
    @comment = @article.comments.new(article_params)
    if @comment.save
      flash[:notice] = "Comment successfully saved and sent for approval"
      redirect_to new_articles_path
    else
      flash[:alert] = @comment.errors.full_messages.first
      render 'new'
    end
  end
end
