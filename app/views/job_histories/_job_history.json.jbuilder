json.extract! job_history, :id, :employee_id, :end_date, :job_title, :clinic_id, :created_at, :updated_at
json.url job_history_url(job_history, format: :json)