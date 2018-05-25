class CategoriesController < ApplicationController
  def show
    @articles = Category.find(params[:id]).articles
    render 'articles/index'
  end
end
