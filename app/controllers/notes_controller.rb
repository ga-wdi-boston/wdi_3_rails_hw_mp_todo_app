class NotesController < ApplicationController
  def new
    @task = Task.find(params[:list_id])
    @note = @task.notes.new
  end

  def create
    @task = Task.find(params[:task_id])
    @note = @task.notes.new(note_params)

    if @note.save
      redirect_to list_path(@task.list_id)
    else
      render :new
    end
  end

  private

  def note_params
    params.require(:note).permit(:note)
  end

end
