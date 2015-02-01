class NotesController < ApplicationController
    def index
    @task = Task.find(params[:task_id])
    @notes = @task.notes
  end

  def new
    @task = Task.find(params[:task_id])
    @note = @task.notes.new
  end

  def create
    @task = Task.find(params[:task_id])
    @note = @task.notes.create(note_params)
    redirect_to list_task_notes_path(@task)
  end

  private
    def task_params
      params.require(:note).permit(:name)
    end
end
