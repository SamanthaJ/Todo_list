class TasksController < ApplicationController

  def index
    @tasks = Task.all
  end

  def show
    @task = Task.find(params[:id])
  end
  
  def create
    @task = Task.new(task_params)
    if @task.save  
      redirect_to tasks_path
    end
  
  end

  private

  def task_params
    params.require(:task).permit(:title, :description)
  end
end
