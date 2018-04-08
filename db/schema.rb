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

ActiveRecord::Schema.define(version: 20180408185553) do

  create_table "movies", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.string   "rating"
    t.integer  "length"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "orders", force: :cascade do |t|
    t.string   "customer_name"
    t.string   "customer_email"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "showtimes", force: :cascade do |t|
    t.string   "showtime"
    t.integer  "movie_id"
    t.integer  "theatre_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["movie_id"], name: "index_showtimes_on_movie_id"
    t.index ["theatre_id"], name: "index_showtimes_on_theatre_id"
  end

  create_table "theatres", force: :cascade do |t|
    t.string   "name"
    t.integer  "seating"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tickets", force: :cascade do |t|
    t.float    "price"
    t.integer  "showtime_id"
    t.integer  "order_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["order_id"], name: "index_tickets_on_order_id"
    t.index ["showtime_id"], name: "index_tickets_on_showtime_id"
  end

end
