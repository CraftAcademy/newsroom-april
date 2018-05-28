class ArticlesController < ApplicationController
  before_action :authenticate_user!, except: [:index]
  before_action :load_categories, except: [:show]

  def index
    @articles = Article.where(approval:true)
  end

  def show
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new
    authorize @article
  end

  def create
    @article = Article.new(article_params)
    @article.user = current_user
    @article.approval = true if @article.user.editor?
    if @article.save
      flash[:notice] = "Article successfully saved and sent for approval" if @article.user.journalist?
      flash[:notice] = "Article successfully published" if @article.user.editor?
      redirect_to root_path
    else
      flash[:alert] = @article.errors.full_messages.first
      render 'new'
    end
  end

  def edit
    @article = Article.find(params[:id])
    authorize @article
  end

  def update
    @article = Article.find(params[:id])
    if @article.update(article_params)
      flash[:notice] = "Article successfully saved and sent for approval"
      redirect_to article_path(@article)
    else
      flash[:alert] = @article.errors.full_messages.first
      render 'edit'
    end
  end

  def destroy
    @article = Article.find(params[:id])
    if @article.user.editor?
      if @article.destroy
        flash[:notice] = "Article successfully deteled!"
      else
        flash[:alert] = @article.errors.full_messages.first
      end
    else
      flash[:alert] = "You are not authorized to delete this article"
    end

    redirect_to root_path
  end

  private
  def article_params
    params.require(:article).permit(:headline, :content, :category_id)
  end

  def load_categories
    @categories = Category.all
  end
end
