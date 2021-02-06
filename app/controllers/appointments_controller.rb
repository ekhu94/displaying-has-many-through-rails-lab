class AppointmentsController < ApplicationController
    before_action :find_appointment, only: [:show]

    def show
    end

    private

    def find_appointment
        @appointment = Appointment.find(params[:id])
    end

    def appointment_params
        params.require(:appointment).permit(:appointment_datetime, :patient_id, :doctor_id)
    end

end