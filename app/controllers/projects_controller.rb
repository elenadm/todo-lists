class ProjectsController < ApplicationController

  def index
    @projects = Project.all
  end

  def create
    @project = Project.new(project_params)
    @project.save
  end

  def edit

  end

  def update
    @project = find_project
    @project.update(project_params)
    #@project.update_attributes(project_params)
    redirect_to projects_url
  end

  def destroy
    @project = find_project
    @project.destroy
    redirect_to projects_url
  end

  private

  def find_project
    Project.find(params[:id])
  end

  def project_params
    params.require(:project).permit(:content)
  end
end
