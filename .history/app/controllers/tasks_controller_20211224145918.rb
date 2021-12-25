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

end
