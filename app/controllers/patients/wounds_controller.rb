class Patients::WoundsController < ApplicationController
  before_action :set_wound, except: [:index], only: [:edit, :update, :destroy]
  before_action :set_patient, only: [:edit, :update, :destroy]

  # GET /wounds
  # GET /wounds.json
  def index
    @wounds = Wound.all
    @wundarts = Wundart.all
    @wound = Wound.new
    @faktors = Faktor.all
  end

  # GET /wounds/1
  # GET /wounds/1.json
  def show
    @patient=Patient.find_by_id(params[:patient_id])
    @wounds = Wound.find_by_id(params[:id])
    respond_to :html, :json

  end

  # GET /wounds/new
  def new
    @wound = Wound.new
    @wounds = Wound.all
    @wundarts = Wundart.all
    @faktors = Faktor.all
    @currentPatient = Patient.find_by_id(params[:patient_id])
    @patient = Patient.all.map { |c| { vorname: c.vorname, id: c.id } }
    respond_to do |format|
      if @wound.save
        format.html { render 'show', notice: 'Wound was successfully created.' }
      else
        format.html { render 'new'} 
      end
    end
  end

  # GET /wounds/1/edit
  def edit
  end

  # POST /wounds
  # POST /wounds.json
  def create
    @wound = Wound.new(wound_params)
    @wound.patient_id = @patient_id

    respond_to do |format|
      if @wound.save
        format.html { redirect_to @wound, notice: 'Wound was successfully created.' }
        format.json { render :new, status: :created, location: @wound }
      else
        format.html { render :show }
        format.json { render json: @wound.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /wounds/1
  # PATCH/PUT /wounds/1.json
  def update
    respond_to do |format|
      if @wound.update(wound_params)
        format.html { redirect_to @wound, notice: 'Wound was successfully updated.' }
        format.json { render :show, status: :ok, location: @wound }
      else
        format.html { render :edit }
        format.json { render json: @wound.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /wounds/1
  # DELETE /wounds/1.json
  def destroy
    @wound.destroy
    respond_to do |format|
      format.html { redirect_to wounds_url, notice: 'Wound was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_wound
      @wound = Wound.find_by(params[:wounds_id])
    end

    def set_patient
      @patient = Patient.find_by(params[:patient_id])
    end


    # Only allow a list of trusted parameters through.
    def wound_params
      #params.require(:wound).permit(:bezeichnung, :name)
      params.fetch(:wound, {}).permit(:bezeichnung, :name)
      #params.require(:wound).permit(faktor_ids: [])
    end
end
