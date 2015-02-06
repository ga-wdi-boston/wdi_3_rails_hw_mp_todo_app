class ProjectsController < ApplicationController
  before_action :set_project, only: [:show, :edit, :update, :destroy]
  def index
    @projects = Project.all
  end
  def new
    @project = Project.new
  end
  def show
    @lists = @project.lists
  end
  def edit
  end
  def create
    @project = Project.new(project_params)
    if @project.save
      redirect_to action: :index
    else
      render 'new'
    end
  end
  def update
    if @project.update(project_params)
      # @project.update_attributes(project_params)
      redirect_to action: :index
    else
      render 'edit'
    end
  end
  def destroy
    @project.destroy
    redirect_to action: :index
  end

  private
  def set_project
    @project = Project.find(params[:id])
  end
  def project_params
    params.require(:project).permit(:name)
  end
end
