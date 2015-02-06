require 'pry-byebug'
class ListsController < ApplicationController
  before_action :set_list, only: [:show, :edit, :update, :destroy]

  def index
    @lists = List.all
  end
  def new
    @list = List.new
  end
  def show
    @tasks = @list.tasks
  end
  def edit
  end
  def create
    @list = List.new(list_params)
    if @list.save
      redirect_to action: :index
    else
      render 'new'
    end
  end
  def update
    if @list.update(list_params)
      redirect_to action: :index
    else
      render 'edit'
    end
  end
  def destroy
    @list.destroy
    redirect_to action: :index
  end

  private
  def set_list
    @list = List.find(params[:id])
  end
  def list_params
    params.require(:list).permit(:name)
  end
end
