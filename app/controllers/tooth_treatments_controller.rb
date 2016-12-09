class ToothTreatmentsController < ApplicationController
  before_action :set_tooth_treatment, only: [:show, :edit, :update, :destroy]

  # GET /tooth_treatments
  # GET /tooth_treatments.json
  def index
    @tooth_treatments = ToothTreatment.all
  end

  # GET /tooth_treatments/1
  # GET /tooth_treatments/1.json
  def show
  end

  # GET /tooth_treatments/new
  def new
    @tooth_treatment = ToothTreatment.new
  end

  # GET /tooth_treatments/1/edit
  def edit
  end

  # POST /tooth_treatments
  # POST /tooth_treatments.json
  def create
    @tooth_treatment = ToothTreatment.new(tooth_treatment_params)

    respond_to do |format|
      if @tooth_treatment.save
        format.html { redirect_to @tooth_treatment, notice: 'Tooth treatment was successfully created.' }
        format.json { render :show, status: :created, location: @tooth_treatment }
      else
        format.html { render :new }
        format.json { render json: @tooth_treatment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tooth_treatments/1
  # PATCH/PUT /tooth_treatments/1.json
  def update
    respond_to do |format|
      if @tooth_treatment.update(tooth_treatment_params)
        format.html { redirect_to @tooth_treatment, notice: 'Tooth treatment was successfully updated.' }
        format.json { render :show, status: :ok, location: @tooth_treatment }
      else
        format.html { render :edit }
        format.json { render json: @tooth_treatment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tooth_treatments/1
  # DELETE /tooth_treatments/1.json
  def destroy
    @tooth_treatment.destroy
    respond_to do |format|
      format.html { redirect_to tooth_treatments_url, notice: 'Tooth treatment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tooth_treatment
      @tooth_treatment = ToothTreatment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tooth_treatment_params
      params.require(:tooth_treatment).permit(:tooth_id, :treatment_id, :date_treatead)
    end
end
