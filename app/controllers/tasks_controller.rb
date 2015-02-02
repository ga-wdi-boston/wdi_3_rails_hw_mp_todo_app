class TasksController < ApplicationController

  def create
    @list = List.find(params[:list_id])
    @task = @list.tasks.create!(tasks_params)
    redirect_to list_path(@list)
  end

  def new
    @list = List.find(params[:list_id])
    @task = @list.tasks.new
  end

  def destroy
    @list = List.find(params[:list_id])
    @task = @list.tasks.find(params[:id])
    @task.destroy
    redirect_to list_path(@list)
  end

  private

  def tasks_params
    params.require(:task).permit(:title, :due_date, :status) #why the fuck is :status not passing through?
  end

end
