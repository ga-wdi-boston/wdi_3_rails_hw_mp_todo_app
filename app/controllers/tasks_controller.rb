class TasksController < ApplicationController
  def index
    @list = List.find(params[:list_id])
    @tasks = @list.tasks
  end

  def new
    @list = List.find(params[:list_id])
    @tasks = @list.tasks
    @task = @list.tasks.new
  end

  def create
    @list = List.find(params[:list_id])
    @task = @list.tasks.new(tasks_params)

    if @task.save
      redirect_to list_tasks_path(@list)
    else
      render :new
    end
  end


  private

  def tasks_params
    params.require(:task).permit(:name, :status)
  end
end
