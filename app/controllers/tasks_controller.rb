class TasksController < ApplicationController
  before_filter :require_user
  def index
    @project = Project.find(params[:project_id])
    @tasks = @project.tasks
  end

  def show
    @projects = Project.all
    @project = Project.find(params[:project_id])
    @task = @project.tasks.find(params[:id])
  end

  def new
    @projects = Project.all
    @project = Project.find(params[:project_id])
    @task = @project.tasks.build
  end
  
  def create
    @project = Project.find(params[:project_id])
    @task = @project.tasks.build(params[:task])
    if @task.save
      redirect_to project_url(@project)
    else
      render :action => "new"
    end
  end

  def edit
    @projects = Project.all
    @project = Project.find(params[:project_id])
    @task = @project.tasks.find(params[:id])
  end
  
  def update
    @project = Project.find(params[:project_id])
    @task = Task.find(params[:id])
    if @task.update_attributes(params[:task])
      redirect_to project_url(@project)
    else
      render :action => "edit"
    end
  end

  def destroy
    @project = Project.find(params[:project_id])
    @task = Task.find(params[:id])
    @task.destroy

    respond_to do |format|
      format.html { redirect_to project_tasks_path(@project) }
      format.xml  { head :ok }
    end
  end

end
