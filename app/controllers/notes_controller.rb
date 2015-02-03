class NotesController < ApplicationController

  def create
    @task = Task.find(params[:task_id])
    @note = @task.notes.new(note_params)

      if @note.save
        redirect_to task_path(@task)
      else
        render :new
      end
    end

  def destroy
    @task = Task.find(params[:task_id])
    @note = @task.notes.find(params[:id])
    @note.destroy
    redirect_to task_path(@task)
  end

  private

  def note_params
    params.require(:note).permit(:comment)
  end


end