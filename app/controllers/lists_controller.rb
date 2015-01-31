class ListsController < ApplicationController

  before_action :find_list, only: [:show, :edit, :update, :destroy]
  def index
    @lists = List.order(:title)
  end

  def show
  end

  def new
    @list = List.new
  end

  def create
    @list = List.new(list_params)
    if @list.save
      redirect_to action: :index
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @list.update_attributes(list_params)
      redirect_to action: :index
    else
      render :edit
    end
  end

  def destroy
    @list.destroy
    redirect_to action: :index
  end

  private

  def find_list
    @list = List.find(params[:id])
  end
  def list_params
    params.require(:list).permit(:name, :category, :part_of_project, :progress)
  end


end
