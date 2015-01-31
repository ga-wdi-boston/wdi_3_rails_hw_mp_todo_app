class ListsController < ApplicationController

  def index
    @project = Project.find(params[:project_id])
    @lists = @project.lists
  end

  def show
    @list = List.find(params[:id])
    @tasks = @list.tasks
  end

  def create
    @project = Project.find(params[:project_id])
    @list = @project.lists.create(list_params)
    redirect_to project_path(@project)
  end

  private

    def list_params
      params.require(:list).permit(:name, :completed, :project_id)
    end
end
