json.extract! appointment_treatment, :id, :tooth_treatment_id, :appointment_id, :created_at, :updated_at
json.url appointment_treatment_url(appointment_treatment, format: :json)