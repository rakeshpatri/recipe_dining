class Recipe < ActiveRecord::Base
	has_many :ingredients
	has_many :procedural_steps
	accepts_nested_attributes_for :ingredients, :procedural_steps

  
  #For rails_admin

  def recipe_preference_enum
    ['Veg', 'Non-veg']
  end

  def recipe_cuisine_enum
    ["recipe_cuisine1", "2recipe_cuisine"]
  end

  def recipe_course_enum
    ["recipe_course", "2recipe_ccourse"]
  end

  def no_of_person_serves_enum
    1.upto(10).to_a
  end

end
