class CategoriesController < ApplicationController
  def show
    @categories = Category.all
    @articles = Category.find(params[:id]).articles
    render 'articles/index'
  end
end
