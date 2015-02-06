class NotesController < ApplicationController
  before_action :set_note, only: [:show, :edit, :update, :destroy]

  def show
    @note = Note.find(params[:id])
  end
  def new
    @task = Task.find(params[:task_id])
    @note =  @task.notes.new
  end
  def create
    @task = Task.find(params[:task_id])
    @note =  @task.notes.new(note_params)
    if @note.save
      redirect_to @task
    else
      redirect_to 'new'
    end
  end
  def edit
  end
  def update
    @task = @note.task
    if @note.update(note_params)
      redirect_to @task
    else
      render 'edit'
    end
  end
  def destroy
    @task = @note.task
    @note.destroy
    redirect_to @task
  end

  private
  def set_note
    @note = Note.find(params[:id])
  end
  def note_params
    params.require(:note).permit(:comment)
  end
end
