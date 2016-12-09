class PatientsController < ApplicationController
  before_action :set_patient, only: [:show, :edit, :update, :destroy]
  before_action :employeeauthorise, :except => [:show, :create, :registration, :edit, :update]

  # GET /patients
  # GET /patients.json
  def index
    @patients = Patient.all
  end
  
  def search
  	@patients = Patient.search params[:query]
  	unless @patients.empty? #if !@modelnames.empty?
      flash[:notice] = ''
  		render 'index' #will only show records matching the search
  	else
  		flash[:notice] = 'No record matches that search'
      @patients = Patient.all
  		render 'index' #will show all records
  	end
  end

  # GET /patients/1
  # GET /patients/1.json
  def show
  end

  # GET /patients/new
  def new
    @patient = Patient.new
  end
  
  def registration
	@patient = Patient.new
  end

  # GET /patients/1/edit
  def edit
  end

  # POST /patients
  # POST /patients.json
  def create
    @patient = Patient.new(patient_params)

    respond_to do |format|
      if @patient.save
		PatientMailer.welcome(@patient).deliver_now
        format.html { redirect_to @patient, notice: 'Patient was successfully created.' }
        format.json { render :show, status: :created, location: @patient }
      else
        format.html { render :new }
        format.json { render json: @patient.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /patients/1
  # PATCH/PUT /patients/1.json
  def update
    respond_to do |format|
      if @patient.update(patient_params)
        format.html { redirect_to @patient, notice: 'Patient was successfully updated.' }
        format.json { render :show, status: :ok, location: @patient }
      else
        format.html { render :edit }
        format.json { render json: @patient.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /patients/1
  # DELETE /patients/1.json
  def destroy
    @patient.destroy
    respond_to do |format|
      format.html { redirect_to patients_url, notice: 'Patient was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_patient
      @patient = Patient.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def patient_params
      params.require(:patient).permit(:cnp, :first_name, :surname, :gender_id, :birthday, :insurance, :registration_date, :address1, :address2, :city, :county, :postal_code, :country_id, :phone, :email, :password, :password_cofirmation)
    end
end
