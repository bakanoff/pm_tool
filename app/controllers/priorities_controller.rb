class PrioritiesController < ApplicationController
  before_action :set_priority, only: [:show, :update, :destroy, :edit]

  def index
    @priorities = Priority.all
  end

  def new
    @priority = Priority.new
  end

  def create
    @priority = Priority.create(priority_params)
    if @priority.save
      redirect_to priority_path(@priority)
    else
      render 'new'
    end
  end

  def update
    if @priority.update(priority_params)
      redirect_to priority_path(@priority)
    else
      render 'edit'
    end
  end

  def destroy
    @priority.destroy
    redirect_to priorities_path
  end


  private

  def priority_params
    params.require(:priority).permit(:label)
  end

  def set_priority
    @priority = Priority.find(params[:id])
  end
end