class MenusController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
    render "index"
  end

  def create
    Menu.create!(
      item: params[:item],
      price: params[:price],
      item_type: params[:item_type],
      dish_type: params[:dish_type],
      extension: params[:extension],
    )
    redirect_to menus_path
  end

  def destroy
    id = params[:id]
    menu = Menu.find(id)
    menu.destroy
    redirect_to menus_path
  end
end
