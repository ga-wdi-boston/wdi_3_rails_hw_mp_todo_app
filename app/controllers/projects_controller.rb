class ProjectsController < ApplicationController
  before_action :find_project, only: [:show, :edit, :update, :destroy]
  def index
    @projects = Project.order(:title)
  end

  def show
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.new(project_params)
    if @project.save
      redirect_to action: :index
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @project.update_attributes(project_params)
      redirect_to action: :index
    else
      render :edit
    end
  end

  def destroy
    @project.destroy
    redirect_to action: :index
  end

  private

  def find_project
    @project = Project.find(params[:id])
  end
  def project_params
    params.require(:project).permit(:title, :due_date, :progress)
  end

end

