class TasksController < ApplicationController
  before_action :set_task, only: %i[show edit update destroy]

  # GET /tasks
  def index
    @task = Task.new
    if params[:query].present?
      @tasks = Task.where('name LIKE ?', "%#{params[:query]}%").sort_by(&:status).sort_by(&:time).sort_by(&:date)
    else
      @tasks = Task.all.sort_by(&:status).sort_by(&:time).sort_by(&:date)
    end
    if turbo_frame_request?
      render partial: 'tasks', locals: { tasks: @tasks }
    else
      render :index
    end
  end

  def create
    @task = Task.new(task_params)

    respond_to do |format|
      if @task.save
        format.html { redirect_to root_url, notice: "Task was successfully created" }
      # else
      #   format.html { render :new, status: :unprocessable_entity }
      end
    end
  end

  private

  def set_task
    @task = Task.find(params[:id])
  end

  def task_params
    params.require(:task).permit(:name, :status, :date, :time)
  end
end
