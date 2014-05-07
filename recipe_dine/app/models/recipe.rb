class Recipe < ActiveRecord::Base
  include RecipeAdmin
	has_many :ingredients
	# has_many :procedural_steps
  has_many :cooking_steps
  has_many :garnishing_steps
  has_many :pre_preparation_steps
	has_many :serving_steps
  has_many :storing_steps
  accepts_nested_attributes_for :ingredients, :cooking_steps, :garnishing_steps, :pre_preparation_steps, :serving_steps, :storing_steps

end
