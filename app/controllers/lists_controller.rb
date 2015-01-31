class ListsController < ApplicationController
  def index
    @lists = List.all
  end

  def show
    @list = List.find(params[:id])
  end

  def new
    @list = List.new
  end

  def create
    @list = List.new(list_params)

    respond_to do |format|
      if @list.save
        format.html { redirect_to @list, notice: 'List was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  def destroy
    @list = List.find(params[:id])
    @list.destroy
    respond_to do |format|
      format.html { redirect_to lists_url, notice: 'List was successfully destroyed.' }
    end
  end


  private


  # Never trust parameters from the scary internet, only allow the white list through.
  def list_params
    params.require(:list).permit(:name)
  end

end
