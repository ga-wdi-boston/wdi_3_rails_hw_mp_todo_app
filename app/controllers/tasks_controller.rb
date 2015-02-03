class TasksController < ApplicationController

  before_action :set_list

  def index
    @tasks = Task.all
  end

  def create
    @task = @list.tasks.create!(task_params)

    redirect_to lists_path(@list)
  end

  private
    def set_list
      @list = List.find(params[:list_id])
    end

    def task_params
      params[:task].permit(:title)
    end


end
