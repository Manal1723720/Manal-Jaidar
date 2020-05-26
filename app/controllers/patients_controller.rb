class PatientsController < ApplicationController
    before_action :set_patient, only: [:edit, :update, :destroy]
  
    # GET /wounds
    # GET /wounds.json
    def index
      @patients = Patient.all
    end
  
    # GET /wounds/1
    # GET /wounds/1.json
    def show
      @patient=Patient.find(params[:id])
      @wounds = @patient.wounds
    end
  
    # GET /wounds/new
    def new
      @patient = Patient.new
      respond_to do |format|
        if @patient.save
          format.html { redirect_to @patient, notice: 'Wound was successfully created.' }
        end
      end
    end
  
    # GET /wounds/1/edit
    def edit
    end
  
    # POST /wounds
    # POST /wounds.json
    def create
    end
  
    # PATCH/PUT /wounds/1
    # PATCH/PUT /wounds/1.json
    def update
    end
  
    # DELETE /wounds/1
    # DELETE /wounds/1.json
    def destroy
    end
  
    private
      # Use callbacks to share common setup or constraints between actions.
  
      def set_patient
        @patient = Patient.find_by(params[:patient_id])
      end
  
  
      # Only allow a list of trusted parameters through.
      def patient_params
        #params.require(:wound).permit(:bezeichnung, :name)
        params.fetch(:patient, {}).permit(:vorname, :nachname, :geburtsdatum)
        #params.require(:wound).permit(faktor_ids: [])
      end
  
end
