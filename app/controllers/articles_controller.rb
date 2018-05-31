class ArticlesController < ApplicationController
  before_action :authenticate_user!, except: [:index]
  before_action :load_categories, except: [:show]

  def index
    @articles = Article.where(published:true)
  end

  def show
    @article = Article.find(params[:id])
    @comments = @article.comments.where(published:true)
    if @article.published== false && current_user != @article.user
      flash[:notice] = t('flash.article.in_process')
      redirect_to root_path
    end
  end

  def new
    @article = Article.new
    authorize @article
  end

  def create
    @article = Article.new(article_params)
    @article.user = current_user
    @article.published = true if @article.user.editor?
    if @article.save
      flash_for_articles(@article.user)
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
      @article.update(published: false) if current_user.journalist?
      flash_for_articles(current_user)
      redirect_to article_path(@article)
    else
      flash[:alert] = @article.errors.full_messages.first
      render 'edit'
    end
  end

  def destroy
    @article = Article.find(params[:id])
    if @article.destroy
      flash[:notice] = t('flash.article.delete')
    else
      flash[:alert] = @article.errors.full_messages.first
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

  def flash_for_articles(user)
    case user.role
    when 'journalist'
      flash[:notice] = t('flash.article.sent_approval')
    when 'editor'
      flash[:notice] = t('flash.article.published')
    end
  end
end
