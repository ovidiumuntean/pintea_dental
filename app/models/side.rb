class Side < ActiveRecord::Base
	has_many :tooths
	
	validates :name, presence:  true
end
