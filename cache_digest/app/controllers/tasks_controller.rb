class TasksController < ApplicationController
  def edit
    @task = Task.find(params[:id])
  end
  def update
    @task = Task.find(params[:id])
    @task.update(task_params)
    redirect_to project_url, notice: "Task was successfully updated"
  end
  private
    def task_params
      params.require(:task).permit(:name, :completed_at)
    end
end
