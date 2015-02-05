class NotesController < ApplicationController

  def index
    @list = List.find(params[:list_id])
    @task = Task.find(params[:task_id])
    @notes = @task.notes
  end

  def edit
    # @task is beign assigned the object that was returned from the params hash using (params[:task_id])key of :task_id going to the dabatabe finding the Task table and getting the row with said ID and rails is  creating an object out of it.

    # Get the id for the task from the params hash
    # task_id = params[:task_id]
    # # find the task in the DB with id of task_id
    # # create an instance/object of Task from that row in the DB
    # # assign that object to @task
    # @task = Task.find(task_id)
    @task = Task.find(params[:task_id])
    # @note is beign assigned the object that was returned from the params
    @note = @task.notes.find(params[:id])
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

 def update
    @list = List.find(params[:list_id])
    @task = Task.find(params[:task_id])
    @note = @task.notes.find(params[:id])

      if @note.update(note_params)
         redirect_to list_task_path(@list, @task, @note_id)
      else
        render :edit
      end
 end

 def destroy
  @task = Task.find(params[:task_id])
  @note = @task.notes.find(params[:id])
  @note.destroy
    redirect_to list_task_path(@task.list, @task)
 end

  private

  def note_params
    params.require(:note).permit(:body)

  end
end

