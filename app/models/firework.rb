class Firework < ActiveRecord::Base
	has_many :firework_details
	has_many :firework_years, through: :firework_details

	def name
		"#{firework_name}"
	end
end
