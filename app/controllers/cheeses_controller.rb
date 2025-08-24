class CheesesController < ApplicationController
  def index
    @cheeses = Cheese.all
    render "pages/cheeses/index"
  end
end