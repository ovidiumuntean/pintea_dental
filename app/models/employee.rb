class Employee < ActiveRecord::Base
	belongs_to :gender
	belongs_to :clinic
	has_many :job_histories
	has_many :appointments
	belongs_to :country
	
	validates :password, length: { in: 4..20 }
	validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
	has_secure_password
	validates :first_name, presence:  true
	validates :surname, presence:  true
	validates :gender, presence:  true
	validates :birthday, presence:  true
	validates :address1, presence:  true
	validates :city, presence:  true
	validates :county, presence:  true
	validates :country, presence:  true
	validates :clinic_id, presence:  true
	validates :phone,   :presence => {:message => 'Invalid Phone Number!'},
						:uniqueness => true,
						:numericality => true,
						:length => { :minimum => 10, :maximum => 15 }
	validates :email, presence:  true
	validates :email, uniqueness:  true
end
