class Review < ActiveRecord::Base
	belongs_to :patient
	belongs_to :apointment_treatment
end
