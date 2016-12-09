json.extract! appointment, :id, :patient_id, :date, :time, :tooth_treatment_id, :employee_id, :created_at, :updated_at
json.url appointment_url(appointment, format: :json)