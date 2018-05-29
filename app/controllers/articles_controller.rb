class ArticlesController < ApplicationController
  before_action :authenticate_user!, except: [:index]
  before_action :load_categories, except: [:show]

  def index
    @articles = Article.where(approval:true)
  end

  def show
    @article = Article.find(params[:id])
    @comments = @article.comments.where(approval:true)
    if @article.approval == false
      flash[:notice] = "Article is under approval process"
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
    @article.approval = true if @article.user.editor?
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
    @article.update(approval: false) if current_user.journalist?
    if @article.update(article_params)
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
      flash[:notice] = "Article successfully deteled!"
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
      flash[:notice] = "Article successfully saved and sent for approval"
    when 'editor'
      flash[:notice] = "Article successfully published"
    end
  end
end
