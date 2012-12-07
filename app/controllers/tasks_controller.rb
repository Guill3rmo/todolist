class TasksController < ApplicationController

  def index
    @incomplete_tasks = Task.where(complete: false)
    @complete_tasks = Task.where(complete: true)
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(params[:task])
    respond_to do |format|
    if @task.save
      format.html  { redirect_to(tasks_url, :notice => 'Task was successfully created.') }
    else
      format.html  { render :action => "new" }
      format.json  { render :json => @task.errors, :status => :unprocessable_entity }
    end
  end
end

  def update
  @task = Task.find(params[:id])
  @task.update_attributes!(params[:task])
  respond_to do |format|
      format.html  { redirect_to(tasks_url, :notice => 'Task was updated') }
    end
  end
 
  def destroy
    @task = Task.destroy(params[:id])
    respond_to do |format|
      format.html  { redirect_to(tasks_url, :notice => 'Task was deleted.') }
    end
  end

end
