class ArticlesController < ApplicationController
  def index
    @articles = Article.all
    @categories = Category.all
  end

  def show
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new
    @categories = Category.all
  end

  def create
    @categories = Category.all
    @article = Article.new(article_params)
    if @article.save
      flash[:notice] = "Article successfully saved and sent for approval"
      redirect_to root_path
    else
      flash[:alert] = @article.errors.full_messages.first
      render 'new'
    end
  end

  private
  def article_params
    params.require(:article).permit(:headline, :content, :category_id)
  end
end
