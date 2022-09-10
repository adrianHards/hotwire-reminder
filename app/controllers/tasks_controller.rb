class TasksController < ApplicationController
  before_action :set_task, only: %i[show edit update destroy]

  # GET /tasks
  def index
    @categories = Category.all
    @task = Task.new
    if params[:query].present?
      @tasks = Task.where('name LIKE ?', "%#{params[:query]}%").sort_by(&:time).sort_by(&:date)
    else
      @tasks = Task.all.sort_by(&:time).sort_by(&:date)
      # .sort_by(&:status)
    end
    if turbo_frame_request?
      render partial: 'tasks', locals: { tasks: @tasks }
    else
      render :index
    end
  end

  def create
    @task = Task.new(task_params)

    if @task.date.nil?
      @task.date = Time.now.strftime('%d/%m/%Y')
    end

    if @task.time.nil?
      @task.time = Time.now.strftime('%H:00')
    end

    respond_to do |format|
      if @task.save
        # alternative method:
        # format.turbo_stream
        format.html { redirect_to root_url, notice: "Task was successfully created" }
      # else
      #   format.html { render :new, status: :unprocessable_entity }
      end
    end
  end

  def edit
  end

  def update
    respond_to do |format|
      if @task.update(task_params)
        format.html { redirect_to root_url, notice: "Task was successfully updated" }
      # else
      #   format.html { render :edit, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @task.destroy
    redirect_to root_url, notice: "Task was successfully deleted."
  end

  def tick
    @task = Task.find(params[:id])
    @task.status == 0 ? @task.update(status: 1) : @task.update(status: 0)
    # render json: { message: "Success" }
  end

  private

  def set_task
    @task = Task.find(params[:id])
  end

  def task_params
    params.require(:task).permit(:name, :status, :date, :time)
  end
end
