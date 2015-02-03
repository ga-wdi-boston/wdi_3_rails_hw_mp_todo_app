class NotesController < ApplicationController

  def create
    @task = Task.find(params[:task_id])
    @note = @task.notes.create(notes_params)
    if @note.save
      redirect_to list_task_path(@task.list_id, @task.id)
    else
      render :new
    end
  end

  def new
    @task = Task.find(params[:task_id])
    @note = @task.notes.new
    redirect_to list_task_path(@task)
  end

  def destroy
    @task = Task.find(params[:task_id])
    @note = @task.notes.find(params[:id])
    @note.destroy
    redirect_to task_path(@task)
  end

  private

  def notes_params
    params.require(:note).permit(:description)
  end
end
