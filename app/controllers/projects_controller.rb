class ProjectsController < ApplicationController
  before_action :find_project, only: [:update, :destroy]

  def index
    @projects = Project.all
  end

  def create
    @project = Project.new(project_params)
    @project.save
  end

  def update
    @project.update(project_params)
    redirect_to projects_url
  end

  def destroy
    @project.destroy
    redirect_to projects_url
  end

  private

  def find_project
    @project = Project.find(params[:id])
  end

  def project_params
    params.require(:project).permit(:content)
  end
end
