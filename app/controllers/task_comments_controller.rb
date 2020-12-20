class TaskCommentsController < ApplicationController
  def create
    @task = Task.find(params[:task_id])
    @task_comment = current_user.task_comments.new(task_comment_params)
    @task_comment.task_id = @task.id
    @task_comment.save
    redirect_back(fallback_location: root_path)
  end

  def destroy
    TaskComment.find_by(params[:task_comment_id]).destroy
    redirect_back(fallback_location: root_path)
  end

  private
  def task_comment_params
    params.require(:task_comment).permit(:comment)
  end


end
