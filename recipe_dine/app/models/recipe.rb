class Recipe < ActiveRecord::Base
	has_many :ingredients
	has_many :procedural_steps
	accepts_nested_attributes_for :ingredients, :procedural_steps
end
