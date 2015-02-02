class TasksController < ApplicationController
  def index
    @list = List.find(params[:list_id])
    @tasks = @list.tasks
  end

  def show
    @task = Task.find(params[:id])
  end

  def new
    @list = List.find(params[:list_id])
    @task = @list.tasks.new
  end

  def create
    @list = List.find(params[:list_id])
    @task = @list.tasks.new(task_params)

    if @task.save
      redirect_to list_path(@list)
    else
      render :new
    end
  end

   def update
    @task = Task.find(params[:id])
    @task.update!(task_params)
    redirect_to :back
  end

  # DELETE /Projects/1
  # DELETE /Projects/1.json
  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    respond_to do |format|
      format.html { redirect_to list_url(@task.list_id), notice: 'Project was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_project
      @project = Project.find(params[:id])
    end

  private

  def task_params
    params.require(:task).permit(:name, :completed)
  end

end
