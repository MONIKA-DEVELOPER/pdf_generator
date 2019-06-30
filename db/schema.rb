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

ActiveRecord::Schema.define(version: 2019_06_28_053759) do

  create_table "candidates", force: :cascade do |t|
    t.string "name"
    t.date "date"
    t.bigint "installment_payment"
    t.date "due_date"
    t.bigint "unit_no"
    t.string "payment_plan"
    t.string "work_stage"
    t.integer "installment_no"
    t.string "cheque"
    t.bigint "account_no"
    t.string "ifsc_code"
    t.string "bank_details"
    t.string "authorized_sign"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "due_amount"
    t.integer "interest_on_delayed_payment"
  end

end
