class TasksController < ApplicationController
  before_action :set_task, only: [:show, :edit, :update, :destroy]

  def show
    @note = @task.notes.new
  end

  def new
    @task = Task.new
  end

  def edit
  end

  def create
    list = List.find(params[:list_id])
    @task = list.tasks.new(task_params)
    if @task.save
      redirect_to @task.list, notice: 'Task was successfully created.'
    else
      render :new
    end
  end

  def toggle_complete
    task = Task.find(params[:task_id])
    task.update_attributes(completed?: params[:completed?])
    redirect_to :back
  end

  def update
    if @task.update(task_params)
      redirect_to @task, notice: 'Task was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @task.destroy
      redirect_to tasks_url, notice: 'Task was successfully destroyed.'
    end
  end

  private
    def set_task
      @task = Task.find(params[:id])
    end

    def task_params
      params.require(:task).permit(:title, :list_id, :completed?)
    end
end
