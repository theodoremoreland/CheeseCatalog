class MenusController < ApplicationController
  def index
    @menus = Menu.includes(:cheeses).all
    render "pages/menus/index"
  end
end