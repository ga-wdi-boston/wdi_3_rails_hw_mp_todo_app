class NotesController < ApplicationController
  before_action :set_list, except: :catalog
  before_action :set_task, except: :catalog
  before_action :set_note, only: [:show, :edit, :update, :destroy]

  def index
    @notes = @task.notes.all
    @note = Note.new
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
      redirect_to list_task_notes_path(@list, @task), notice: 'Note was successfully created.'
    else
      render :new
    end
  end

  def update
    if @note.update(note_params)
      redirect_to list_task_notes_path(@list, @task), notice: 'Note was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @note.destroy
      redirect_to list_task_notes_path(@list, @task), notice: 'Note was successfully destroyed.'
  end

  def catalog
    @notes = Note.all
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
