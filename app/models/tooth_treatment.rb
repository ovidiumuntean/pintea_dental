class ToothTreatment < ActiveRecord::Base
	belongs_to :tooth
	has_many :appointment_treatments
	belongs_to :treatment
	
	validates :treatment_id, presence: true
	validates :tooth_id, presence: true
	validates_uniqueness_of :treatment_id, :scope => :tooth_id
end
