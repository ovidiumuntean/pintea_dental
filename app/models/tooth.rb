class Tooth < ActiveRecord::Base
	belongs_to :side
	has_many :tooth_threatments
	
	validates :side, presence:  true
	validates :roots_number, presence:  true
	validates :canals_number, presence:  true
end
