class HomeController < ApplicationController
  def index
    unless session[:redirected]
      redirect_to new_user_registration_path
      session[:redirected] = true
    else
      @in_process_tasks = Task.where(status: Task.statuses[:in_process]).pluck(:subject)

      @done_tasks = Task.where(status: Task.statuses[:done]).pluck(:subject)

      @projects_with_tasks = Project.joins(:tasks).distinct
    end
  end
end