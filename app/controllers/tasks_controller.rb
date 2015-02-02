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
    @tasks = @list.tasks
    @task = @list.tasks.new
  end

  def create
    @list = List.find(params[:list_id])
    @task = @list.tasks.new(tasks_params)

    if @task.save
      redirect_to list_path(@list)
    else
      render :new
    end
  end

  def edit
    @list = List.find(params[:list_id])
    @task = @list.tasks.find(params[:id])
  end

  def update
    # @list = List.find(params[:list_id])
    # @task = @list.tasks.find(params[:id])
    @task = Task.find(params[:list_id])

    respond_to do |format|
      if @task.update(tasks_params)
        format.html { redirect_to tasks_url, notice: 'Task was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end


def destroy
    @task = Task.find(params[:id])
    @task.destroy

    respond_to do |format|
        format.html { redirect_to list_path(@task.list_id) }
        format.json { head :ok }
    end
end



  private

  def tasks_params
    params.require(:task).permit(:name, :status)
  end
end
