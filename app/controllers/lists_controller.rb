class ListsController < ApplicationController
  before_action :find_project, only: [:edit, :create, :update, :destroy]
  before_action :find_project_list, only: [:edit, :update, :destroy]

  def show
    @list = List.find(params[:id])
    @tasks = @list.tasks
  end

  def edit
  end

  def create
    @list = @project.lists.create(list_params)
    redirect_to :back
  end

  def update
    if @list.update(list_params)
      redirect_to @list.project
    else
      render 'edit'
    end
  end

  def destroy
    @list.destroy

    redirect_to @list.project
  end

  private

    def find_project
      @project = Project.find(params[:project_id])
    end

    def find_project_list
      @list = @project.lists.find(params[:id])
    end

    def list_params
      params.require(:list).permit(:name, :completed, :project_id)
    end
end
