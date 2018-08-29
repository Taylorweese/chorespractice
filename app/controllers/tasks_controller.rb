class TasksController < ApplicationController
  before_action :set_task, only: [:edit, :update, :destroy]
  before_action :all_tasks, only: [:index, :create, :update, :destroy]
  
  def update
    @task.update(task_params)
  end
  
  def destroy
    @task.destroy
  end

  # GET /tasks/new
  def new
    @task = Task.new
  end

  # GET /tasks/1/edit
  def edit
  end

  # POST /tasks
  # POST /tasks.json
  def create
    @task = Task.create(task_params)

  end

  # PATCH/PUT /tasks/1
  # PATCH/PUT /tasks/1.json


  # DELETE /tasks/1
  # DELETE /tasks/1.json


  private
  
    def all_tasks
      @tasks = Task.all
    end
    
    # Use callbacks to share common setup or constraints between actions.
    def set_task
      @task = Task.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def task_params
      params.require(:task).permit(:description, :deadline)
    end
end
