class FireworkComment < ActiveRecord::Base
	has_many :fireworkYears, through: :fireworks
	belongs_to :firework
end
