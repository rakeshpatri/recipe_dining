class CreateProceduralSteps < ActiveRecord::Migration
  def change
    create_table :procedural_steps do |t|
    	t.string :step_type
    	t.integer :step_number
    	t.string :description
    	t.string :comment
    	t.integer :recipe_id

      t.timestamps
    end
  end
end
