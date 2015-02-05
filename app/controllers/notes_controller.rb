class NotesController < ApplicationController
  before_action :set_note, only: [:update, :destroy]
  before_action :set_task, only: [:create]


  # GET /notes/new
  def new
    @note = Note.new
  end

  # POST /notes
  # POST /notes.json
  def create
    @note = @task.notes.new(note_params)

    respond_to do |format|
      if @note.save
        format.html { redirect_to @task, notice: 'Note was successfully created.' }
        format.json { render :show, status: :created, location: @note }
      else
        format.html { render :new }
        format.json { render json: @note.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /notes/1
  # DELETE /notes/1.json
  def destroy
    @note.destroy
    respond_to do |format|
      format.html { redirect_to task_path(@note.task_id), notice: 'Note was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.

    def set_task
      @task = Task.find(params[:task_id])
    end

    def set_note
      @note = Note.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def note_params
      params.require(:note).permit(:body, :important, :task_id)
    end
end
