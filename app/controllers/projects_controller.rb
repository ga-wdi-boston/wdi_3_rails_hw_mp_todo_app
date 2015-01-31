class ProjectsController < ApplicationController
  before_action :set_project only: [:show, :edit, :update, :destroy]

  # GET /Projects
  # GET /Projects.json
  def index
    @Projects = Project.all
  end

  # GET /Projects/1
  # GET /Projects/1.json
  def show
  end

  # GET /Projects/new
  def new
    @Project = Project.new
  end

  # GET /Projects/1/edit
  def edit
  end

  # POST /Projects
  # POST /Projects.json
  def create
    @Project = Project.new(Project_params)

    respond_to do |format|
      if @Project.save
        format.html { redirect_to @Project, notice: 'Project was successfully created.' }
        format.json { render :show, status: :created, location: @Project }
      else
        format.html { render :new }
        format.json { render json: @Project.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /Projects/1
  # PATCH/PUT /Projects/1.json
  def update
    respond_to do |format|
      if @Project.update(Project_params)
        format.html { redirect_to @Project, notice: 'Project was successfully updated.' }
        format.json { render :show, status: :ok, location: @Project }
      else
        format.html { render :edit }
        format.json { render json: @Project.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /Projects/1
  # DELETE /Projects/1.json
  def destroy
    @Project.destroy
    respond_to do |format|
      format.html { redirect_to Projects_url, notice: 'Project was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_Project
      @Project = Project.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def Project_params
      params.require(:Project).permit(:title, :genre)
    end
end

