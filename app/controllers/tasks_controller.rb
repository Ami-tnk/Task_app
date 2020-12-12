class TasksController < ApplicationController
  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)
    @task.save
    redirect_to tasks_path, success:"タスク「#{@task.name}」を登録しました。"
  end

  def index
    @tasks = Task.all
  end


  private

  def task_params
    params.require(:task).permit(:name, :discription)
  end
end
