class ProjectsController < ApplicationController
  def index
    @projects = Project.all
  end

  def edit
    @project = Project.find(params[:id])
  end

  def update
    @project = Project.findd(params[:id])
    @project.update(project_params)
    redirect_to project_url, notice: "Project was successfully updated"
  end

  def destroy
    @project = Project.find(params[:id])
    if @project.destroy
      redirect_to project_url, notice: "Project was successfully destroyed"
    end
  end
  private
    def project_params
      params.require(:project).permit(:name)
    end
end
