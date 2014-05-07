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

ActiveRecord::Schema.define(version: 20140506144713) do

  create_table "ingredients", force: true do |t|
    t.integer  "recipe_id"
    t.string   "name"
    t.string   "quantity"
    t.string   "measuring_unit"
    t.string   "comment"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "procedural_steps", force: true do |t|
    t.string   "step_type"
    t.integer  "step_number"
    t.string   "description"
    t.string   "comment"
    t.integer  "recipe_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "media_file_file_name"
    t.string   "media_file_content_type"
    t.integer  "media_file_file_size"
    t.datetime "media_file_updated_at"
  end

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
