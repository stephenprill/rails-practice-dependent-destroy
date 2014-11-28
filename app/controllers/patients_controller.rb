class PatientsController < ApplicationController
  def show
    @patient = find_patient_by_id(params[:id])
  end

  def destroy
    @patient = find_patient_by_id(params[:id])
    @patient.destroy
    redirect_to root_path
  end

  private

  def find_patient_by_id(id)
    Patient.find(id)
  end
end
