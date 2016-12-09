class JobHistoriesController < ApplicationController
  before_action :set_job_history, only: [:show, :edit, :update, :destroy]
  before_action :employeeauthorise

  # GET /job_histories
  # GET /job_histories.json
  def index
    @job_histories = JobHistory.all
  end

  # GET /job_histories/1
  # GET /job_histories/1.json
  def show
  end

  # GET /job_histories/new
  def new
    @job_history = JobHistory.new
  end

  # GET /job_histories/1/edit
  def edit
  end

  # POST /job_histories
  # POST /job_histories.json
  def create
    @job_history = JobHistory.new(job_history_params)

    respond_to do |format|
      if @job_history.save
        format.html { redirect_to @job_history, notice: 'Job history was successfully created.' }
        format.json { render :show, status: :created, location: @job_history }
      else
        format.html { render :new }
        format.json { render json: @job_history.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /job_histories/1
  # PATCH/PUT /job_histories/1.json
  def update
    respond_to do |format|
      if @job_history.update(job_history_params)
        format.html { redirect_to @job_history, notice: 'Job history was successfully updated.' }
        format.json { render :show, status: :ok, location: @job_history }
      else
        format.html { render :edit }
        format.json { render json: @job_history.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /job_histories/1
  # DELETE /job_histories/1.json
  def destroy
    @job_history.destroy
    respond_to do |format|
      format.html { redirect_to job_histories_url, notice: 'Job history was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_job_history
      @job_history = JobHistory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def job_history_params
      params.require(:job_history).permit(:employee_id, :end_date, :job_title, :clinic_id)
    end
end
