class TasksController < ApplicationController

  def index
    @list = List.find(params[:list_id])
    @tasks = @list.tasks
  end

  def show
    @list = List.find(params[:list_id])
    @task = @list.tasks.find(params[:id])
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

  def edit
  end

  def update
    @list = List.find(params[:list_id])
      if @task.update(tasks_params)
        redirect_to list_tasks_path(@list), notice: 'Task was successfully updated.'
      else
        render :edit
      end
  end

  def destroy
    @list = List.find(params[:list_id])
    @list.tasks.destroy
    redirect_to list_tasks_path(@list), notice: 'Task deleted.'
  end

  private

  def tasks_params
    params.require(:task).permit(:name, :complete_by)
  end




end
