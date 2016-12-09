class DataFile < ActiveRecord::Base
	belongs_to :patient
	
	validates :patient_id, presence:  true
	validates :name, presence:  true
	
	mount_uploader :name, NameUploader
end
