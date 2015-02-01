class TasksController < ApplicationController
  before_action :set_task, only: [:show, :edit, :update, :destroy]
  def index
  end

  def show
  end

  def new
    @task = Task.new
  end

  def edit
  end

  def create
  end

  def update
  end

  def destroy
  end

  private
   def set_task
      @task = Task.find(params[:id])
    end

    def list_params
      params.require(:task).permit(:name, :completed?)
    end
end
