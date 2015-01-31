class TasksController < ApplicationController

  def show
    @task = Task.find(params[:id])
    @notes = @task.notes
  end

  def create
    @list = List.find(params[:list_id])
    @task = @list.tasks.create(task_params)
    redirect_to project_list_path(@list, list)
  end

  private

    def task_params
      params.require(:task).permit(:name, :completed, :list_id)
    end
end
