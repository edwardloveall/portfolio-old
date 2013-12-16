class ProjectsController < ApplicationController
  def index
    @projects = Project.all
  end

  def show
    @project = find_project
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.new(project_params)

    if @project.save
      redirect_to @project, notice: 'Project created'
    else
      render :new
    end
  end

  def edit
    @project = find_project
  end

  def update
    @project = find_project

    if @project.update(project_params)
      redirect_to @project, notice: 'Project updated'
    else
      render :edit
    end
  end

  def destroy
    @project = find_project

    @project.destroy
    redirect_to projects_path, notice: 'Project removed'
  end

  private

  def project_params
    params.require(:project).permit(:title, :description, :poster, :category_id)
  end

  def find_project
    Project.find(params[:id])
  end
end
