class TasksController < ApplicationController
  def index
  end

  def show
  end

  def new
  @task = Task.new
  end

  def edit
  end

  def create
  task = Task.new(task_params)
  task.save!
  flash[:notice] = "タスク「#(task.name)」を登録いたしました"
  redirect_to task_url
  end
  private 
  def task_params
    params.require(:task).permit(:name, :description)
  end
end
