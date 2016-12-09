class AppointmentTreatmentsController < ApplicationController
  before_action :set_appointment_treatment, only: [:show, :edit, :update, :destroy]

  # GET /appointment_treatments
  # GET /appointment_treatments.json
  def index
    @appointment_treatments = AppointmentTreatment.all
  end

  # GET /appointment_treatments/1
  # GET /appointment_treatments/1.json
  def show
  end

  # GET /appointment_treatments/new
  def new
    @appointment_treatment = AppointmentTreatment.new
  end

  # GET /appointment_treatments/1/edit
  def edit
  end

  # POST /appointment_treatments
  # POST /appointment_treatments.json
  def create
    @appointment_treatment = AppointmentTreatment.new(appointment_treatment_params)

    respond_to do |format|
      if @appointment_treatment.save
        format.html { redirect_to @appointment_treatment, notice: 'Appointment treatment was successfully created.' }
        format.json { render :show, status: :created, location: @appointment_treatment }
      else
        format.html { render :new }
        format.json { render json: @appointment_treatment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /appointment_treatments/1
  # PATCH/PUT /appointment_treatments/1.json
  def update
    respond_to do |format|
      if @appointment_treatment.update(appointment_treatment_params)
        format.html { redirect_to @appointment_treatment, notice: 'Appointment treatment was successfully updated.' }
        format.json { render :show, status: :ok, location: @appointment_treatment }
      else
        format.html { render :edit }
        format.json { render json: @appointment_treatment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /appointment_treatments/1
  # DELETE /appointment_treatments/1.json
  def destroy
    @appointment_treatment.destroy
    respond_to do |format|
      format.html { redirect_to appointment_treatments_url, notice: 'Appointment treatment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_appointment_treatment
      @appointment_treatment = AppointmentTreatment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def appointment_treatment_params
      params.require(:appointment_treatment).permit(:tooth_treatment_id, :appointment_id)
    end
end
