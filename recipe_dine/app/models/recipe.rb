class Recipe < ActiveRecord::Base
  include RecipeAdmin
	has_many :ingredients
	# has_many :procedural_steps
	has_many :pre_preparation_steps
  has_many :cooking_steps
  has_many :garnishing_steps
	has_many :serving_steps
  has_many :storing_steps
  accepts_nested_attributes_for :ingredients, :cooking_steps, :garnishing_steps, :pre_preparation_steps, :serving_steps, :storing_steps

  validates_presence_of :dish_name

  rails_admin do
    list do
      field :dish_name
      field :short_description
      field :no_of_person_serves
      field :recipe_preference
      field :recipe_cuisine
      field :recipe_course
      field :treatment
      field :cooking_equipment
      field :pre_preparation_steps
      field :cooking_steps
      field :garnishing_steps
      field :serving_steps
      field :storing_steps
    end
    object_label_method do
      :custom_label_method
    end
  end
  def custom_label_method
    self.dish_name
    
  end
end
