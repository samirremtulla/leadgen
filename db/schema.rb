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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130423161042) do

  create_table "payments", :force => true do |t|
    t.integer  "question_id"
    t.integer  "user_id"
    t.boolean  "payment"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "payments", ["question_id"], :name => "index_payments_on_question_id"
  add_index "payments", ["user_id"], :name => "index_payments_on_user_id"

  create_table "questions", :force => true do |t|
    t.text     "description"
    t.text     "phone"
    t.text     "email"
    t.text     "name"
    t.integer  "response"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "email",                            :null => false
    t.string   "crypted_password"
    t.string   "salt"
    t.datetime "created_at",                       :null => false
    t.datetime "updated_at",                       :null => false
    t.integer  "balance",          :default => 10
  end

end
