class CategoriesController < ApplicationController
  def show
    @categories = Category.all
    @articles = Category.find(params[:id]).articles.where(approval:true)
    render 'articles/index'
  end
end
