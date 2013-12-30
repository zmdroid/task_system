class TaskCopiesController < ApplicationController
  before_action :set_task_copy, only: [:show, :edit, :update, :destroy]

  # GET /task_copies
  # GET /task_copies.json
  def index
    @task_copies = TaskCopy.all
	TaskCopy.auto_save
  end

  # GET /task_copies/1
  # GET /task_copies/1.json
  def show
  end

  # GET /task_copies/new
  def new
    @task_copy = TaskCopy.new
  end

  # GET /task_copies/1/edit
  def edit
  end

  # POST /task_copies
  # POST /task_copies.json
  def create
    @task_copy = TaskCopy.new(task_copy_params)

    respond_to do |format|
      if @task_copy.save
        format.html { redirect_to @task_copy, notice: 'Task copy was successfully created.' }
        format.json { render action: 'show', status: :created, location: @task_copy }
      else
        format.html { render action: 'new' }
        format.json { render json: @task_copy.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /task_copies/1
  # PATCH/PUT /task_copies/1.json
  def update
    respond_to do |format|
      if @task_copy.update(task_copy_params)
        format.html { redirect_to @task_copy, notice: 'Task copy was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @task_copy.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /task_copies/1
  # DELETE /task_copies/1.json
  def destroy
    @task_copy.destroy
    respond_to do |format|
      format.html { redirect_to task_copies_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_task_copy
      @task_copy = TaskCopy.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def task_copy_params
      params.require(:task_copy).permit(:task_id, :publisher_id, :current_date, :state)
    end
end
