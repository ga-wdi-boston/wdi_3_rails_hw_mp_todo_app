class ListsController < ApplicationController

  def show
    @list = List.find(params[:id])
    @task = Task.new(list: @list)
  end

  def create
    @project = Project.find(params[:project_id])
    @list = @project.lists.new(list_params)

      if @list.save
        redirect_to project_path(@project)
      else
        render :new
      end
  end

  def edit
    #@project = Project.find(params[:project_id])
    @list = List.find(params[:id])
  end

  def update
    #@project = Project.find(params[:project_id])
    @list = List.find(params[:id])
    @list.update(list_params)
    @project = @list.project
    redirect_to project_path(@project)
  end

  def destroy
    @project = Project.find(params[:project_id])
    @list = @project.lists.find(params[:id])
    @list.destroy
    redirect_to project_path(@project)
  end

  private

  def list_params
    params.require(:list).permit(:name)
  end

end