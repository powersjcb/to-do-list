class ListsController < ApplicationController


  def show
    @list = List.find(params[:id])
  end

  def create
    @user = User.find(params[:user_id])
    @list = @user.lists.build(list_params)
    if @list.save
      flash[:success] = "List created"
      redirect_to :back
    else
      flash[:error] = "List not created"
      redirect_to :back
    end
  end

  private

    def list_params
      params.require("list_form").permit(:list_name)
    end


end
 