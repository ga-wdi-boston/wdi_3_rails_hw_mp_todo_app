class ListsController < ApplicationController
  before_action :set_list, only: [:show, :edit, :update, :destroy]
  def index
    @projects = Project.find(params[:project_id])
    @lists = @projects.lists
  end

  def show
  end

  def edit
  end

  def new
    @project = Project.find(params[:project_id])
    @list = @project.lists.new
  end

  def create
    @project = Project.find(params[:project_id])
    @list = @project.lists.new(list_params)

    if @list.save
      redirect_to project_lists_path(@project)
    else
      render :new
    end
  end

  def update
    @list.update!(list_params)
    redirect_to list_path(@list.id)
  end

  def destroy
    @list.destroy
    respond_to do |format|
      format.html { redirect_to project_url(@list.project_id), notice: 'Project was successfully destroyed.' }
      format.json { head :no_content }
    end
  end


  private

  def set_list
      @list = List.find(params[:id])
    end

  def list_params
    params.require(:list).permit(:name, :description)
  end

end
