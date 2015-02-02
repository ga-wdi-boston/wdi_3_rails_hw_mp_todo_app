class NotesController < ApplicationController

  def index
    @list = List.find(params[:list_id])
    @task = Task.find(params[:task_id])
    @notes = @task.notes
  end

  def create
    @list = List.find(params[:list_id])
    @task = Task.find(params[:task_id])
    @note = @task.notes.new(note_params)

    if @note.save
      redirect_to list_task_path(@list, @task, @note_id)
    else
      render :new
    end
  end

  private

  def note_params
    params.require(:note).permit(:body)

  end
end

