class NotesController < ApplicationController

  def create
    @task = Task.find(params[:task_id])
    @note = @task.notes.create(note_params)
    redirect_to project_list_task_path(@list, list)
  end

  private

    def note_params
      params.require(:note).permit(:text, :task_id)
    end

end
