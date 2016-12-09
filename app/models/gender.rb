class Gender < ActiveRecord::Base
	has_many :patients
	has_many :employees
	
	validates :name, presence:  true
end
