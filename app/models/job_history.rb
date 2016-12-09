class JobHistory < ActiveRecord::Base
	belongs_to :employee
	
	validates :employee_id, presence:  true
	validates :end_date, presence:  true
	validates :job_title, presence:  true
	validates :clinic_id, presence:  true
end
