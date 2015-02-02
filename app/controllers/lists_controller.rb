class ListsController < ApplicationController

  def show
    @list = List.find(params[:id])
  end

  def create
    @project = Project.find(params[:project_id])
    @list = @project.lists.new(lists_params)

      if @list.save
        redirect_to project_path(@project)
      else
        render :new
      end
  end

  def edit
    @list = List.find(params[:id])
  end

  def update
    @project = Project.find(params[:project_id])
    @list = @project.lists.new(lists_params)
  end

  def destroy
    @project = Project.find(params[:project_id])
    @list = @project.lists.find(params[:id])
    @list.destroy
    redirect_to project_path(@project)
  end

  private

  def lists_params
    params.require(:list).permit(:name)
  end

end