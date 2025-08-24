class CheesesController < ApplicationController
  def index
    @cheeses = Cheese.order(:name).all
    render "pages/cheeses/index"
  end
end