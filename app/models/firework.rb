class Firework < ActiveRecord::Base
	has_one :firework_details

	def name
		"#{firework_name}"
	end
end
