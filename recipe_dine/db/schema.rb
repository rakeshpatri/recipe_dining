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

ActiveRecord::Schema.define(version: 20140512094726) do

  create_table "addresses", force: true do |t|
    t.integer  "user_id"
    t.string   "building"
    t.string   "street"
    t.string   "locality"
    t.string   "city"
    t.integer  "pin_code"
    t.integer  "mobile_number"
    t.integer  "landline"
    t.integer  "alt_contact_number"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cooking_steps", force: true do |t|
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

  create_table "garnishing_steps", force: true do |t|
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

  create_table "ingredients", force: true do |t|
    t.integer  "recipe_id"
    t.string   "name"
    t.string   "quantity"
    t.string   "measuring_unit"
    t.string   "comment"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pre_preparation_steps", force: true do |t|
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
    t.integer  "user_id"
    t.string   "other_cuisine"
    t.string   "other_course"
    t.string   "other_treatment"
    t.string   "other_equipment"
  end

  create_table "serving_steps", force: true do |t|
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

  create_table "storing_steps", force: true do |t|
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

  create_table "user_social_handles", force: true do |t|
    t.integer  "user_id"
    t.string   "social_handle_type"
    t.string   "social_handle_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "email",                      default: "", null: false
    t.string   "encrypted_password",         default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",              default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "salutation"
    t.string   "family"
    t.string   "user_photo_file_name"
    t.string   "user_photo_content_type"
    t.integer  "user_photo_file_size"
    t.datetime "user_photo_updated_at"
    t.string   "kitchen_photo_file_name"
    t.string   "kitchen_photo_content_type"
    t.integer  "kitchen_photo_file_size"
    t.datetime "kitchen_photo_updated_at"
    t.string   "family_photo_file_name"
    t.string   "family_photo_content_type"
    t.integer  "family_photo_file_size"
    t.datetime "family_photo_updated_at"
    t.string   "information_source"
    t.string   "bio"
    t.string   "day_spending"
    t.string   "why_love_cooking"
    t.string   "place_person_inspired"
    t.string   "best_compliments"
    t.string   "expectation_from_holachef"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
