class MenusController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
    if current_user.email == "harshasyam2@gmail.com"
      render "index", locals: { show_adding_column: true, show_delete: true }
    else
      render "index", locals: { show_adding_column: false, show_delete: false }
    end
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
