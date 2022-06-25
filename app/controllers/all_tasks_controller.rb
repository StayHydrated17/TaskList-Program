class AllTasksController < ApplicationController
  before_action :set_all_task, only: %i[ show edit update destroy ]

  # GET /all_tasks or /all_tasks.json
  def index
    @all_tasks = AllTask.all
  end

  # GET /all_tasks/1 or /status or /all_tasks/1.json
  def show
  end

  # GET /all_tasks/new
  def new
    @all_task = AllTask.new
  end

  # GET /all_tasks/1/edit
  def edit
  end

  def tasks_completed
    @all_tasks = AllTask.all
    render "tasks_completed"
  end

  def tasks_uncompleted
    @all_tasks = AllTask.all
    render "tasks_uncompleted"
  end

#method to search through available tasks
  def search_tasks
    #byebug
    if params[:search].blank?
      redirect_to all_tasks_path
    
    else
      @parameter = params[:search].downcase
      @results = AllTask.all.where("lower(task_title) LIKE :search", search: "%#{@parameter}%")

      @matchTask = AllTask.all.where("lower(task_title) LIKE ?", "%#{@parameter}%")
    end
  end


  # POST /all_tasks or /all_tasks.json
  def create
    @all_task = AllTask.new(all_task_params)

    respond_to do |format|
      if @all_task.save
        format.html { redirect_to all_task_url(@all_task), notice: "Task was successfully created!" }
        format.json { render :show, status: :created, location: @all_task }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @all_task.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /all_tasks/1 or /all_tasks/1.json
  def update
    respond_to do |format|
      if @all_task.update(all_task_params)
        format.html { redirect_to all_task_url(@all_task), notice: "Task was successfully updated!" }
        format.json { render :show, status: :ok, location: @all_task }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @all_task.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /all_tasks/1 or /all_tasks/1.json
  def destroy
    @all_task.destroy

    respond_to do |format|
      format.html { redirect_to all_tasks_url, notice: "Task successfully deleted!" }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_all_task
      @all_task = AllTask.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def all_task_params
      params.require(:all_task).permit(:task_name, :task_title, :task_description, :task_due_date, :task_completed)
    end
end
