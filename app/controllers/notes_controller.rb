class NotesController < ApplicationController

  def create
    @task = Task.find(params[:task_id])
    @note = @task.notes.create(note_params)
    redirect_to task_path(@task)
  end

  def new
    @task = Task.find(params[:task_id])
    @note = @task.notes.new(note_params)
  end

  def destroy
    @task = task.find(params[:task_id])
    @note = @article.notes.find(params[:id])
    @note.destroy
    redirect_to task_path(@task)
  end

  private
    def note_params
      params.require(:note).permit(:body)
    end
end
