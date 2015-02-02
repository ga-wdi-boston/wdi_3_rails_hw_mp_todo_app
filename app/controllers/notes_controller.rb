class NotesController < ApplicationController
  before_action :set_note, only: [:edit, :update, :destroy]

  def index
    @task = Task.find(params[:task_id])
    @notes = @task.notes.all
    @note = Note.new
  end

  def new
    @note = Note.new
  end

  def edit
  end

  def create
    @task = Task.find(params[:task_id])
    @note = @task.notes.build(note_params)
    if @note.save
      redirect_to task_notes_path(@task), notice: 'Note was successfully created.'
    else
      redirect_to task_notes_path(@task), notice: 'Note cannot be blank.'
    end
  end

  def update
    if @note.update(note_params)
      redirect_to list_task_notes_path(@list, @task), notice: 'Note was successfully updated.'
    else
      redirect_to list_task_notes_path(@list, @task), notice: 'Note cannot be blank.'
    end
  end

  def destroy
    @task = Task.find(params[:task_id])
    @note.destroy
      redirect_to task_notes_path(@task), notice: 'Note was successfully destroyed.'
  end

  def catalog
    @notes = Note.all
  end

  private
    def set_note
      @note = Note.find(params[:id])
    end

    def note_params
      params.require(:note).permit(:body)
    end
end
