class TasksController < ApplicationController
  before_action :find_task, only: [:show, :edit, :update, :destroy]

  def show
    @note = @task.notes.new
  end

  def new
    @list = List.find(params[:list_id])
    @task = @list.tasks.new
  end

  def create
    @list = List.find(params[:list_id])
    @task = @list.tasks.new(tasks_params)
    respond_to do |format|
      if @task.save
        format.html { redirect_to list_path(@list), notice: 'Task was successfully created.' }
        format.json { render :show, status: :created, location: list_path(@list) }
      else
        format.html { render :new }
        format.json { render json: @task.errors, status: :unprocessable_entity }
      end
    end
  end

  def edit
  end

  def update
    respond_to do |format|
      if @task.update_attributes(tasks_params)
        format.html { redirect_to list_path(@list), notice: 'Task was successfully updated.' }
        format.json { render :show, status: :ok, location: list_path(@list) }
      else
        format.html { render :edit }
        format.json { render json: @task.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @task.destroy
    respond_to do |format|
      format.html { redirect_to list_path(@list), notice: 'List was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
  def find_task
    @list = List.find(params[:list_id])
    @task = @list.tasks.find(params[:id])
  end

  def tasks_params
    params.require(:task).permit(:name, :complete)
  end

end
