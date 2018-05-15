class ItemsController < ApplicationController
  def new 
  end

  def index
    @items = Item.all
    @a = 0
    Item.all.each do |item|
      @a += item.cost.to_i
    end
  end

  def show
    @item = Item.find(params[:id])
  end

  def create
    @item = Item.new(params[:item].permit(:title, :cost))
    @item.save
    redirect_to @item
  end
end
