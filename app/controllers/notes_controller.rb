class NotesController < ApplicationController
  before_action :set_list
  before_action :set_task
  before_action :set_note, only: [:show, :edit, :update, :destroy]

  def index
    @notes = Note.all
  end

  def show
  end

  def new
    @note = Note.new
  end

  def edit
  end

  def create
    @note = @task.notes.build(note_params)
    if @note.save
      redirect_to list_task_note_path(@list, @task, @note), notice: 'Note was successfully created.'
    else
      render :new
    end
  end

  def update
    if @note.update(note_params)
      redirect_to list_task_note_path(@list, @task, @note), notice: 'Note was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @note.destroy
      redirect_to notes_url, notice: 'Note was successfully destroyed.'
  end

  private

    def set_list
      @list = List.find(params[:list_id])
    end

    def set_task
      @task = @list.tasks.find(params[:task_id])
    end

    def set_note
      @note = @task.notes.find(params[:id])
    end

    def note_params
      params.require(:note).permit(:body)
    end
end
