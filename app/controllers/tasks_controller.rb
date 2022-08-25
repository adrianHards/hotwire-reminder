class TasksController < ApplicationController
  before_action :set_task, only: %i[show edit update destroy]

  # GET /tasks
  def index
    if params[:query].present?
      @tasks = Task.where('name LIKE ?', "%#{params[:query]}%").sort_by(&:time).sort_by(&:date).sort_by(&:status)
    else
      @tasks = Task.all.sort_by(&:time).sort_by(&:date).sort_by(&:status)
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
