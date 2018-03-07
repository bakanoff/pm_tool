class TasksController < ApplicationController
  before_action :set_task, only: [:show, :edit, :update, :destroy]
#  before_action :default_status, only: [:create, :update, :edit]
  before_action :logged_in_user, only: [:new, :create, :edit, :update]

  def index
    @tasks = Task.all
  end

  def new
    @task = project.tasks.new
  end

  def create
    @task = project.tasks.create(task_params)
    if @task.save
      redirect_to project_task_path(project, @task)
    else
      render 'new'
    end
  end

  def update
    if @task.update(task_params)
      redirect_to project_task_path(project, @task)
    else
      render 'edit'
    end
  end

  def destroy
    @task.destroy
    redirect_to tasks_path
  end

  private

  def task_params
    params.require(:task).permit(:title, :description, :end_date, :project_id, :priority_id, :task_status_id)
  end

  def set_task
    @task = Task.find(params[:id])
  end

  def project
    @project ||= Project.find(params[:project_id])
  end


#  def default_status
#    @task.task_status_id ||= TaskStatus.first[:id]
#  end
end
