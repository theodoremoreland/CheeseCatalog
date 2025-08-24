class MenusController < ApplicationController
  def index
    @menus = Menu.joins(:cheeses)
                .includes(:cheeses)
                .distinct
                .order(:name)
    render "pages/menus/index"
  end
end