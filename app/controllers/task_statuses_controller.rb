class TaskStatusesController < ApplicationController
  before_action :set_task_status, only: [:show, :edit, :update, :destroy]

  def index
    @task_statuses = TaskStatus.all
  end

  def new
    @task_status = TaskStatus.new
  end

  def create
    @task_status = TaskStatus.create(task_status_params)
    if @task_status.save
      redirect_to task_status_path(@task_status)
    else
      render 'new'
    end
  end

  def update
    if @task_status.update(task_status_params)
      redirect_to task_status_path(@task_status)
    else
      render 'edit'
    end
  end

  def destroy
    @task_status.destroy
    redirect_to task_statuses_path
  end

  private

  def task_status_params
    params.require(:task_status).permit(:label)
  end

  def set_task_status
    @task_status = TaskStatus.find(params[:id])
  end
end