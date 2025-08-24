class MenusController < ApplicationController
  def index
    @menus = Menu.joins(:cheeses)
                .includes(:cheeses)
                .distinct
                .order(:name)
    @cheeses = Cheese.all

    render "pages/menus/index"
  end
end