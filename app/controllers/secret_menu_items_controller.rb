class SecretMenuItemsController < ApplicationController
  def index
    @secretMenuItems = SecretMenuItem.all
    render json: @secretMenuItems
  end

  def show
    @secretMenuItem = SecretMenuItem.find(params[:id])
    render json: @secretMenuItem
  end

  def create
    @secretMenuItem = SecretMenuItem.create(
      menu_name: params[:menu_name],
      restaurant_name: params[:restaurant_name],
      menu_description: params[:menu_description]
    )
    render json: @secretMenuItem
  end

  def update
    @secretMenuItem = SecretMenuItem.find(params[:id])
    @secretMenuItem.update(
      menu_name: params[:menu_name],
      restaurant_name: params[:restaurant_name],
      menu_description: params[:menu_description]
    )
    render json: @secretMenuItem
  end

  def destroy
    @secretMenuItems = SecretMenuItem.all
    @secretMenuItem = SecretMenuItem.find(params[:id])
    @secretMenuItem.destroy
    render json: @secretMenuItems
  end

end
