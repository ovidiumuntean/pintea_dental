class AppointmentTreatment < ActiveRecord::Base
	belongs_to :tooth_treatment
	belongs_to :appointment
	has_many :reviews, :dependent => :destroy
	
	validates :tooth_treatment_id, presence: true
	validates :appointment_id, presence: true

	def average_stars
		reviews.average(:stars)
	end
end
