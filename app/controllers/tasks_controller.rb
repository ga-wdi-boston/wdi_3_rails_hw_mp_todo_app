class TasksController < ApplicationController

  before_action :find_task, only: [:show, :edit, :update, :destroy]
  def index
    @tasks = Task.order(:title)
  end

  def show
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)
    if @task.save
      redirect_to action: :index
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @task.update_attributes(task_params)
      redirect_to action: :index
    else
      render :edit
    end
  end

  def destroy
    @task.destroy
    redirect_to action: :index
  end

  private

  def find_task
    @task = Task.find(params[:id])
  end
  def task_params
    params.require(:task).permit(:name, :completion_status)
  end


end
