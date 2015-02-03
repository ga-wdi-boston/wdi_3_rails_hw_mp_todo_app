class NotesController < ApplicationController

  def index
    @list = List.find(params[:list_id])
    @task = Task.find(params[:task_id])
    @notes = @task.notes
  end

  def create
    @list = List.find(params[:list_id])
    @task = Task.find(params[:task_id])
    @note = @task.notes.new(note_params)

    if @note.save
      redirect_to list_task_path(@list, @task, @note_id)
    else
      render :new
    end
  end

 # def destroy
 #    @list = List.find(params[:list_id])
 #    @task = Task.find(params[:task_id])
 #    @note = @task.notes.find(params[:id])
 #    @note.destroy

 #    redirect_to list_task_path(@list, @task, @note_id)
 #  end

 # def destroy
 #  @task = Task.find(params[:task_id])
 #  @note = @task.notes.find(params[:id])
 #  @note.destroy
 #    redirect_to task_notes_path(@task)
 # end

  private

  def note_params
    params.require(:note).permit(:body)

  end
end

