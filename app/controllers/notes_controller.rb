class NotesController < ApplicationController
  def index
    @task = Task.find(params[:task_id])
    @notes = @task.notes
  end

  def show
    @task = Task.find(params[:task_id])
    @note = @task.notes.find(params[:id])
  end


  def new
    @task = Task.find(params[:task_id])
    @notes = @task.notes
    @note = @task.notes.new
  end

  def create
    @task = Task.find(params[:task_id])
    @note = @task.notes.new(notes_params)

    if @note.save
      redirect_to list_tasks_path(@task)
    else
      render :new
    end
  end

  def edit
    @task = Task.find(params[:task_id])
    @note = @task.notes.find(params[:id])
  end

  def update
    # @task = Task.find(params[:task_id])
    # @note = @task.notes.find(params[:id])
    @note = Note.find(params[:task_id])

    respond_to do |format|
      if @note.update(notes_params)
        format.html { redirect_to notes_url, notice: 'note was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end


def destroy
    @note = Note.find(params[:id])
    @note.destroy

    respond_to do |format|
        format.html { redirect_to list_tasks_path(@note.task_id) }
        format.json { head :ok }
    end
end

  private

  def notes_params
    params.require(:note).permit(:name, :status)
  end
end
