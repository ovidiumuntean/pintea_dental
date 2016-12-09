class Country < ActiveRecord::Base
	belongs_to :region
	has_many :patients
	has_many :employees
	has_many :clinics
	
	validates :name, presence:  true
	validates :region_id, presence:  true
end
