class NotesController < ApplicationController
  def new
    @task = Task.find(params[:list_id])
    @note = @task.notes.new
  end

  def create
    @task = Task.find(params[:task_id])
    @note = @task.notes.new(note_params)

    if @note.save
      redirect_to :back
    else
      render :new
    end
  end

   def update
    @task = Task.find(params[:id])
    @task.update!(task_params)
    redirect_to :back
  end

  # DELETE /Projects/1
  # DELETE /Projects/1.json
  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    respond_to do |format|
      format.html { redirect_to list_url(@task.list_id), notice: 'Project was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  def note_params
    params.require(:note).permit(:note)
  end

end
