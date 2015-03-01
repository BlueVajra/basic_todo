class ProjectsController < ApplicationController
  def new
    @project = Project.new
  end

  def create
    @project = Project.create(project_params)
    # @project.title = params[:title]
    # @project.description = params[:description]
    if @project.save
      redirect_to root_path
    end
  end

  private

  def project_params
    params.require(:project).permit(:title, :description)
  end
end