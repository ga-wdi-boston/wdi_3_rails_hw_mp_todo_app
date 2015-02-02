class TasksController < ApplicationController
  before_action :set_list
  before_action :set_task, only: [:show, :edit, :update, :destroy]

  def index
    @tasks = Task.all
    @task = Task.new
  end

  def show
  end

  def new
    @task = Task.new
  end

  def edit
  end

  def create
    @task = @list.tasks.build(task_params)
    if @task.save
      redirect_to list_path(@list)
    else
      redirect_to list_path(@list)
    end
  end

  def update
    if @task.update(task_params)
      redirect_to list_task_path(@list, @task)
    else
      render :edit
    end
  end

  def destroy
    @task.destroy
    redirect_to list_path(@list)
  end


  private

  def set_list
    @list = List.find(params[:list_id])
  end

  def set_task
    @task = @list.tasks.find(params[:id])
  end

    def task_params
      params.require(:task).permit(:name, :is_completed, :list_id)
    end
end
