class TasksController < ApplicationController

  def show
    @task = Task.find(params[:id])
    @notes = @task.notes
  end
end
