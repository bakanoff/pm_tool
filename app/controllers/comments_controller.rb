class CommentsController < ApplicationController
   before_action :set_comment, only: [:show, :edit, :update, :destroy]

  def index
    @comments = task.comments
  end

  def new
    @comment = task.comments.new
  end

  def create
    @comment = task.comments.create(comment_params)
    if @comment.save
      redirect_to task_comment_path(task, @comment)
    else
      render 'new'
    end
  end

  def update
    if @comment.update(comment_params)
      redirect_to task_comment_path(task, @comment)
    else
      render 'edit'
    end
  end

  def destroy
    @comment.destroy
    redirect_to comments_path
  end

  private

  def comment_params
    params.require(:comment).permit(:content, :user_id, :task_id)
  end

  def set_comment
    @comment = Comment.find(params[:id])
  end

  def task
    @task ||= Task.find(params[:task_id])
  end
end
