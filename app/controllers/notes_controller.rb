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
    @note = @task.notes.new(notes_params)

    if @note.save
      redirect_to task_notes_path(@task), notice: "You've created a new note"
    else
      render :new
    end

  end

  private

  def notes_params
    params.require(:note).permit(:comment)
  end

end
