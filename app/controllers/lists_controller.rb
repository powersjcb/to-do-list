class ListsController < ApplicationController
  

  def show
    @list = List.find(params[:id])
  end

  def create
    @user = User.find(:id)
    @list = @user.lists.build(:list_name)
    if @list.save
      flash[:success] = "List created"
      redirect_to root_url
    else
      redirect_to root_url
    end
  end
end
 