class Patient < ActiveRecord::Base
	has_many :appointments, dependent: :destroy
	has_many :data_files, dependent: :destroy
	belongs_to :gender
	belongs_to :country
	has_many :reviews
	
	validates :password, length: { in: 4..20 }
	validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
	has_secure_password
	validates :cnp, presence:  true
	validates :first_name, presence:  true
	validates :surname, presence:  true
	validates :gender_id, presence:  true
	validates :birthday, presence:  true
	#validates :registration_date, presence:  true
	#validates :address1, presence:  true
	#validates :city, presence:  true
	#validates :county, presence:  true
	validates :country_id, presence:  true
	validates :phone,   :presence => {:message => 'Invalid Phone Number!'},
						:uniqueness => true,
						:numericality => true,
						:length => { :minimum => 10, :maximum => 15 }
	validates :email, presence:  true
	validates :email, uniqueness:  true
	
	
	def self.setRegular(patient) #self declares a method as a class method
		if !patient.nil? #there is a ? on a method that returns a boolean value
			if !patient.regular?
				if patient.comments.count >= 3
					patient.regular = true
					patient.save
				end
			end
		end
	end
	
	def self.search(query)
		where("first_name LIKE ?", "%#{query}%")
  end
end
