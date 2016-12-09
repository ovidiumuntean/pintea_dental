class Appointment < ActiveRecord::Base
	belongs_to :patient
	belongs_to :employee
	has_many :appointment_treatments
	
	validates_each :date do |record, attr, value|
     record.errors.add(attr, 'must be in the future') if value <= Time.now.to_date
    end
	validates :patient_id, presence: true
	validates :date, presence: true
	validates_uniqueness_of :patient_id, :scope => [:date]
	validates_uniqueness_of :employee_id, :scope => [:date]
	#validates :employee_id, presence:  true
end
