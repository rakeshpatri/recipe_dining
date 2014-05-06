# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20140506105732) do

  create_table "recipes", force: true do |t|
    t.string   "dish_name"
    t.string   "short_description"
    t.integer  "no_of_person_serves"
    t.string   "recipe_preference"
    t.string   "recipe_cuisine"
    t.string   "recipe_course"
    t.string   "recipe_dificulty_level"
    t.string   "treatment"
    t.string   "cooking_equipment"
    t.string   "best_dish_combination"
    t.string   "best_beverage_combination"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
