class TasksController < ApplicationController
  before_action :set_task, only:[:show, :edit, :update, :destory]
  def index
    @tasks = Task.all
  end

  def show
    # @task = Task.find(params[:id])
  end

  def new
    # Instantiate the the form_with
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)
    @task.save
    redirect_to task_path(@task)
  end

  def edit
    # @task = Task.find(params[:id])
  end

  def update
    # @task = Task.find(params[:id])
    @task.update(task_params)
    @task.save
    redirect_to task_path(@task)
  end

  def destory
    # @task = Task.find(params[:id])
    @task.destroy

    # No need for DESTROY HTML
    redirect_to tasks_path, status: :see_other
  end

  private

  def set_task
    @task = Task.find(params[:id])
  end

  def task_params
    params.require(:task).permit(:title, :details, :completed)
  end
end
