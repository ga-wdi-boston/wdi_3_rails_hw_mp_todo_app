class ListsController < ApplicationController
  def index
    @project = Project.find(params[:project_id])
    @lists = @projects.lists
  end

  def show
    @list = List.find(params[:id])
  end

  def new
    @project = Project.find(params[:project_id])
    @list = @project.lists.new
  end

  def create
    @project = Project.find(params[:project_id])
    @list = @project.lists.new(lists_params)

    if @list.save
      redirect_to project_lists_path(@project)
    else
      render :new
    end
  end

  private

  def lists_params
    params.require(:list).permit(:name, :description)
  end

end
