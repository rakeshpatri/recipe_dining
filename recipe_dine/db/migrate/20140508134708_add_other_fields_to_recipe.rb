class AddOtherFieldsToRecipe < ActiveRecord::Migration
  def change
  	add_column :recipes, :other_cuisine, :string
  	add_column :recipes, :other_course, :string
  	add_column :recipes, :other_treatment, :string
  	add_column :recipes, :other_equipment, :string
  end
end
