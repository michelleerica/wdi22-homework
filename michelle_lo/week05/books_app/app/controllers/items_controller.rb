class ItemsController < ApplicationController
  def new
    @item = Item.new
  end

  def create
    item = Item.create item_params

    redirect_to "/items/#{item.id}"
  end

  def edit
    @item = Item.find params['id']
  end

  def update
    Item = Item.find params['id']
    Item.update item_params
    redirect_to "/items/#{params['id']}"
  end

  def index
      @items = Item.all
  end

  def show
    @item = Item.find params['id']
  end


  def destroy
    Item.find(params['id']).destroy
    redirect_to "/items"
  end

  private
  def item_params
    params.require(:item).permit(:name, :category, :image, :itgirl_id)
  end
end
