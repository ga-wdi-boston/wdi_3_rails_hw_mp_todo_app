class ListsController < ApplicationController

  def show
    @list = List.find(params[:id])

  end

  def new

  end

  def create
    @list = List.new(list_params)
    @list.save
    redirect_to @list
  end

private
  def list_params
    params.require(:list).permit(:title)
  end

end
