class ItemsController < ApplicationController
  
  def create
    @user = User.find(params[:user_id])
    @list = @user.lists.find(params[:list_id]) 
    @item = @list.items.build(item_params) 
    # break
    if @item.save
      flash[:success] = "Item created"
      redirect_to @user
    else
      flash[:error] = "Item not created"
      redirect_to @user
    end
  end

  private

  def item_params
    params.require("item-form").permit(:name)
  end


end
