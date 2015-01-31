class ListsController < ApplicationController

  def index
    @project = Project.find(params[:project_id])
    @lists = @project.lists
  end

  def show
    @list = List.find(params[:id])
    @tasks = @list.tasks
  end
end
