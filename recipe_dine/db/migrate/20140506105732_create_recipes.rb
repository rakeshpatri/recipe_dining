class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
    	t.string :dish_name
    	t.string :short_description 
    	t.integer :no_of_person_serves
    	t.string :recipe_preference
    	t.string :recipe_cuisine
    	t.string :recipe_course
    	t.string :recipe_dificulty_level
    	t.string :treatment
    	t.string :cooking_equipment
    	t.string :best_dish_combination
    	t.string :best_beverage_combination
      t.timestamps
    end
  end
end
