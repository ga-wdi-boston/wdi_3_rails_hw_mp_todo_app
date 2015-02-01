class NotesController < ApplicationController
  def create
    @task = Task.find(params[:task_id])
    @note = @task.notes.create(notes_params)
    redirect_to list_task_path(@task.list_id, @task)
  end

  def destroy
    @task = Task.find(params[:task_id])
    @note = @task.notes.find(params[:task_id])
    @note.destroy
    redirect_to list_task_path(@task.list_id, @task)
  end

  private
  def notes_params
    params.require(:note).permit(:comment)
  end
end
