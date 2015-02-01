class TasksController < ApplicationController

  def index
    @list = List.find(params[:list_id])
    @tasks = @list.tasks
  end

  def new
    @list = List.find(params[:list_id])
    @task = @list.tasks.new

  end

end
