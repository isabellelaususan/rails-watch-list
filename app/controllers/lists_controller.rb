class ListsController < ApplicationController
  def index

  end
  def show

  end
  def new
    @list = List.new
  end
  def create
    @list = List.new(list_params)
    @list.save
    redirect_to list_path(@list)
  end

  private

  # def set_list
  #   @list = List.find(params[:restaurant_id])
  # end

  def list_params
    params.require(:list).permit(:name)
  end
end
