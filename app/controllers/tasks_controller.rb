class TasksController < ApplicationController
  before_action :set_task, only: [:show, :edit, :update, :destroy]

  def show
    @task = Task.find(params[:id])
    @note = @task.notes
  end
  def new
    @list = List.find(params[:list_id])
    @task = @list.tasks.new
  end
  def create
    @list = List.find(params[:list_id])
    @task = @list.tasks.new(task_params)
    if @task.save
      redirect_to @list
    else
      render 'new'
    end
  end
  def edit
  end
  def update
    @list = @task.list
    if @task.update(task_params)
      redirect_to @list
    else
      render 'edit'
    end
  end
  def destroy
    @list = @task.list
    @task.destroy
    redirect_to @list
  end

  private
  def set_task
    @task = Task.find(params[:id])
  end
  def task_params
    params.require(:task).permit(:name, :priority)
  end
end
