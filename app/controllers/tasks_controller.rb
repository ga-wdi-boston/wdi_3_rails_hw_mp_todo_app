class TasksController < ApplicationController

  def index
    @list = List.find(params[:list_id])
    @tasks = @list.tasks
  end

  def new
    @list = List.find(params[:list_id])
    @task = @list.tasks.new
  end

  def create
    @list = List.find(params[:list_id])
    @task = @list.tasks.create(task_params)
    redirect_to list_tasks_path(@list)
  end

  private
    def task_params
      params.require(:task).permit(:name)
    end
end
