class Firework < ActiveRecord::Base
	has_one :firework_details
	has_many :firework_years, through: :firework_details
	has_many :firework_locations
	has_many :firework_comments

	def name
		"#{firework_name}"
	end
end
