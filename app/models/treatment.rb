class Treatment < ActiveRecord::Base
	has_many :tooth_treatments
	
	validates :name, :presence =>  true,
					 :uniqueness =>  true
	validates :price, presence:  true
	
	def apply_discount(treatment, discount)
		if !treatment.nil?
			treatment.price = treatment.price - treatment.price * discount
		end
	end
end
