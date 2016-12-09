class ToothsController < ApplicationController
  before_action :set_tooth, only: [:show, :edit, :update, :destroy]
  before_action :employeeauthorise

  # GET /tooths
  # GET /tooths.json
  def index
    @tooths = Tooth.all
  end

  # GET /tooths/1
  # GET /tooths/1.json
  def show
  end

  # GET /tooths/new
  def new
    @tooth = Tooth.new
  end

  # GET /tooths/1/edit
  def edit
  end

  # POST /tooths
  # POST /tooths.json
  def create
    @tooth = Tooth.new(tooth_params)

    respond_to do |format|
      if @tooth.save
        format.html { redirect_to @tooth, notice: 'Tooth was successfully created.' }
        format.json { render :show, status: :created, location: @tooth }
      else
        format.html { render :new }
        format.json { render json: @tooth.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tooths/1
  # PATCH/PUT /tooths/1.json
  def update
    respond_to do |format|
      if @tooth.update(tooth_params)
        format.html { redirect_to @tooth, notice: 'Tooth was successfully updated.' }
        format.json { render :show, status: :ok, location: @tooth }
      else
        format.html { render :edit }
        format.json { render json: @tooth.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tooths/1
  # DELETE /tooths/1.json
  def destroy
    @tooth.destroy
    respond_to do |format|
      format.html { redirect_to tooths_url, notice: 'Tooth was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tooth
      @tooth = Tooth.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tooth_params
      params.require(:tooth).permit(:side_id, :tooth_type, :roots_number, :canals_number)
    end
end
