class NotesController < ApplicationController
  before_action :set_note, only: [:edit, :update, :destroy]

  def edit
  end

  def create
    task = Task.find(params[:task_id])
    @note = task.notes.new(note_params)

    if @note.save
      redirect_to task, notice: 'Note was successfully created.'
    else
      redirect_to task, notice: 'Note was invalid.'
    end
  end

  def update
    if @note.update(note_params)
      redirect_to @note, notice: 'Note was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @note.destroy
    redirect_to notes_url, notice: 'Note was successfully destroyed.'
  end

  private
    def set_note
      @note = Note.find(params[:id])
    end

    def note_params
      params.require(:note).permit(:body, :task_id)
    end
end
