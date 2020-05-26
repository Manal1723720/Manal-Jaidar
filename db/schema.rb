# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_05_11_171707) do

  create_table "allergies", force: :cascade do |t|
    t.string "allergie_name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "allergies_patients", force: :cascade do |t|
    t.integer "allergy_id", null: false
    t.integer "patient_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["allergy_id"], name: "index_allergies_patients_on_allergy_id"
    t.index ["patient_id"], name: "index_allergies_patients_on_patient_id"
  end

  create_table "bemerkungs", force: :cascade do |t|
    t.string "bem_text"
    t.boolean "istVorlage"
    t.integer "hasManyBemerkungen_id"
    t.string "hasManyBemerkungen_type"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "dokumentations", force: :cascade do |t|
    t.integer "hasManyDokus_id"
    t.string "hasManyDokus_type"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "faktors", force: :cascade do |t|
    t.string "fak_name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "faktors_wounds", force: :cascade do |t|
    t.integer "faktor_id", null: false
    t.integer "wound_id", null: false
    t.index ["faktor_id"], name: "index_faktors_wounds_on_faktor_id"
    t.index ["wound_id"], name: "index_faktors_wounds_on_wound_id"
  end

  create_table "fotos", force: :cascade do |t|
    t.string "foto_name"
    t.boolean "zustimmen"
    t.datetime "zeitstempel"
    t.integer "hasManyFotos_id"
    t.string "hasManyFotos_type"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "keims", force: :cascade do |t|
    t.string "keim_name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "keims_patients", force: :cascade do |t|
    t.integer "keim_id", null: false
    t.integer "patient_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["keim_id"], name: "index_keims_patients_on_keim_id"
    t.index ["patient_id"], name: "index_keims_patients_on_patient_id"
  end

  create_table "patients", force: :cascade do |t|
    t.string "vorname"
    t.string "nachname"
    t.date "geburtsdatum"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "patients_sonstigs", force: :cascade do |t|
    t.integer "sonstig_id"
    t.integer "patient_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["patient_id"], name: "index_patients_sonstigs_on_patient_id"
    t.index ["sonstig_id"], name: "index_patients_sonstigs_on_sonstig_id"
  end

  create_table "posts", force: :cascade do |t|
    t.string "author"
    t.string "content"
    t.integer "likes"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "sonstigs", force: :cascade do |t|
    t.string "sonstig_name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "wounds", force: :cascade do |t|
    t.string "bezeichnung"
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "wundart_id"
    t.integer "patient_id"
    t.index ["patient_id"], name: "index_wounds_on_patient_id"
    t.index ["wundart_id"], name: "index_wounds_on_wundart_id"
  end

  create_table "wounds_faktors", force: :cascade do |t|
    t.integer "wound_id", null: false
    t.integer "faktor_id", null: false
    t.index ["faktor_id"], name: "index_wounds_faktors_on_faktor_id"
    t.index ["wound_id"], name: "index_wounds_faktors_on_wound_id"
  end

  create_table "wundarts", force: :cascade do |t|
    t.string "art_name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "wundlokalisations", force: :cascade do |t|
    t.string "lok_partie"
    t.date "date"
    t.integer "rezidivzahl"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "allergies_patients", "allergies"
  add_foreign_key "allergies_patients", "patients"
  add_foreign_key "faktors_wounds", "faktors"
  add_foreign_key "faktors_wounds", "wounds"
  add_foreign_key "keims_patients", "keims"
  add_foreign_key "keims_patients", "patients"
  add_foreign_key "wounds", "patients"
  add_foreign_key "wounds", "wundarts"
  add_foreign_key "wounds_faktors", "faktors"
  add_foreign_key "wounds_faktors", "wounds"
end
