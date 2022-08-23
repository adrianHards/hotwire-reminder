class TasksController < ApplicationController
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
end
