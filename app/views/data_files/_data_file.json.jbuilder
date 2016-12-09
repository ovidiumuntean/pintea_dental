json.extract! data_file, :id, :patient_id, :name, :description, :date_added, :created_at, :updated_at
json.url data_file_url(data_file, format: :json)