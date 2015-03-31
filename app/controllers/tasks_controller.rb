class TasksController < ApplicationController
  before_action :find_task, only: [:update, :destroy]

  def create
    @project = Project.find(params[:project_id])
    @task = @project.tasks.create(task_params)
    redirect_to projects_url
  end

  # def update
  #   @task.update(task_params)
  #   redirect_to projects_url
  # end

  def destroy
    @task.destroy
    redirect_to projects_url
  end

  private

  def find_task
    @task = Task.find(params[:id])
  end


  def task_params
    params.require(:task).permit(:text)
  end
end
