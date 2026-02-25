class CategoriesController < ApplicationController
  def index
    @categories = Category.all
    render "pages/categories/index"
  end
end