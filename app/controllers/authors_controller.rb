class AuthorsController < ApplicationController
  before_filter :require_user
  def index
  end

  def show
    @project = Project.find(params[:project_id])
    @author = @project.author
  end

  def new
  end

  def edit
  end

end
