class TasksController < ApplicationController
  before_action :set_task, only: %i[show edit update destroy]

  # GET /tasks
  def index
    if params[:query].present?
      @tasks = Task.where('name LIKE ?', "%#{params[:query]}%")
    else
      @tasks = Task.all
    end

    if turbo_frame_request?
      render partial: 'tasks', locals: { tasks: @tasks }
    else
      render :index
    end
  end

  private

  def set_task
    @task = Task.find(params[:id])
  end

  def task_params
    params.require(:task).permit(:title, :status)
  end
end
