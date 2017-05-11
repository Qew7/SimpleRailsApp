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

ActiveRecord::Schema.define(version: 20170511192523) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "actor_movies", force: :cascade do |t|
    t.bigint "movie_id"
    t.bigint "actor_id"
    t.index ["actor_id"], name: "index_actor_movies_on_actor_id"
    t.index ["movie_id"], name: "index_actor_movies_on_movie_id"
  end

  create_table "actors", force: :cascade do |t|
    t.string "name"
    t.string "second_name"
    t.string "third_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "photo_file_name"
    t.string "photo_content_type"
    t.integer "photo_file_size"
    t.datetime "photo_updated_at"
  end

  create_table "directors", force: :cascade do |t|
    t.string "name"
    t.string "second_name"
    t.string "third_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "photo_file_name"
    t.string "photo_content_type"
    t.integer "photo_file_size"
    t.datetime "photo_updated_at"
  end

  create_table "genres", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "movie_genres", force: :cascade do |t|
    t.bigint "movie_id"
    t.bigint "genre_id"
    t.index ["genre_id"], name: "index_movie_genres_on_genre_id"
    t.index ["movie_id"], name: "index_movie_genres_on_movie_id"
  end

  create_table "movies", force: :cascade do |t|
    t.string "title"
    t.integer "duration"
    t.string "actor"
    t.string "rating"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "poster_file_name"
    t.string "poster_content_type"
    t.integer "poster_file_size"
    t.datetime "poster_updated_at"
    t.bigint "director_id"
    t.index ["director_id"], name: "index_movies_on_director_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "actor_movies", "actors"
  add_foreign_key "actor_movies", "movies"
  add_foreign_key "movie_genres", "genres"
  add_foreign_key "movie_genres", "movies"
  add_foreign_key "movies", "directors"
end
