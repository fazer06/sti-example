class Animal < ActiveRecord::Base

	# Parent model

	belongs_to :tribe

	# self.inheritance_column = :race is used to specify the column for STI 
	# and is not necessary if you are using the default column type
	self.inheritance_column = :race

	scope :lions, 		-> { where(race: 'Lion') }
	scope :meerkats, 	-> { where(race: 'Meerkat') }
	scope :wild_boars, 	-> { where(race: 'WildBoar') }

	def talk 
		raise 'Abstract Method' 
	end

	# We will need a way to know which animals
	# will subclass the Animal model
	def self.races
		%w(Lion WildBoar Meerkat)
	end

end
