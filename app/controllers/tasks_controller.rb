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
    @task = @list.tasks.new(tasks_params)

    if @task.save
      redirect_to list_tasks_path(@list)
    else
      render :new
    end
  end

  def update
    @task = Task.find(params[:id])
    @task.update_attributes(params[:task])
    redirect_to @task

  end

  private

    def tasks_params
      params.require(:task).permit(:title)
    end


end
