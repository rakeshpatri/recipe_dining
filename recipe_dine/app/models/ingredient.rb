class Ingredient < ActiveRecord::Base
	belongs_to :recipe, :inverse_of => :ingredients
	validates_presence_of :name
end
