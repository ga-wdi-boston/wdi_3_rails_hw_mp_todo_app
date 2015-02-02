class NotesController < ApplicationController

  def index
    @task = Task.find(params[:task_id])
  end

  def create
    @task = Task.find(params[:task_id])
    @note = @task.notes.create(note_params)
      if @note.save
        redirect_to list_task_path(@task.list_id, @task.id)
      else
        render :new
      end
  end

  def new
    @task = Task.find(params[:task_id])
    @note = @task.notes.new
    redirect_to list_task_path(@task)
  end

  def destroy
    @task = task.find(params[:task_id])
    @note = @article.notes.find(params[:id])
    @note.destroy
    redirect_to list_task_path(@task)
  end

  private
    def note_params
      params.require(:note).permit(:body)
    end
end
