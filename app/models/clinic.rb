class Clinic < ActiveRecord::Base
	has_many :employees
	has_one :employee
	belongs_to :country
			   
	validates :name, :presence =>  true,
					:uniqueness => true
	validates :address1, presence:  true
	validates :city, presence:  true
	validates :county, presence:  true
	validates :country, presence:  true
	validates :date_registred, presence:  true
	validates :phone, presence:  true
	validates :employee_id, presence:  true
	
	geocoded_by :address
	after_validation :geocode, :if => :address1_changed? || :address2_changed? || :city_changed? || county_changed?
	def address
		[address1, address1, city, county].compact.join(', ')
	end
end
