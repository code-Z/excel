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

ActiveRecord::Schema.define(version: 20140726141354) do

  create_table "workbooks", force: true do |t|
    t.date    "Date"
    t.string  "Document_No"
    t.text    "Name"
    t.decimal "G_Total_Amount",        precision: 10, scale: 2
    t.decimal "Basic",                 precision: 10, scale: 2
    t.decimal "Vat",                   precision: 10, scale: 2
    t.decimal "Others",                precision: 10, scale: 2
    t.decimal "Basic_5",               precision: 10, scale: 2
    t.decimal "Vat_5",                 precision: 10, scale: 2
    t.decimal "Others_5",              precision: 10, scale: 2
    t.decimal "Basic_12_5",            precision: 10, scale: 2
    t.decimal "Vat_12_5",              precision: 10, scale: 2
    t.decimal "Others_12_5",           precision: 10, scale: 2
    t.decimal "Basic_20",              precision: 10, scale: 2
    t.decimal "Vat_20",                precision: 10, scale: 2
    t.decimal "Others_20",             precision: 10, scale: 2
    t.decimal "Basic_tax_free",        precision: 10, scale: 2
    t.decimal "Vat_tax_free",          precision: 10, scale: 2
    t.decimal "Others_free",           precision: 10, scale: 2
    t.decimal "Basic_F_Form",          precision: 10, scale: 2
    t.decimal "Vat_F_Form",            precision: 10, scale: 2
    t.decimal "Others_F_Form",         precision: 10, scale: 2
    t.decimal "Basic_Import_Purchase", precision: 10, scale: 2
    t.decimal "Import_Purchase",       precision: 10, scale: 2
    t.decimal "Others_I_P",            precision: 10, scale: 2
    t.decimal "Basic_CST_1",           precision: 10, scale: 2
    t.decimal "CST_1",                 precision: 10, scale: 2
    t.decimal "Others_CST1",           precision: 10, scale: 2
    t.decimal "Basic_CST_2",           precision: 10, scale: 2
    t.decimal "CST_2",                 precision: 10, scale: 2
    t.decimal "Others_CST2",           precision: 10, scale: 2
    t.decimal "Basic_CST_15",          precision: 10, scale: 2
    t.decimal "CST_15",                precision: 10, scale: 2
    t.decimal "Others_CST3",           precision: 10, scale: 2
    t.decimal "Basic_BLRC2",           precision: 10, scale: 2
    t.decimal "BLRC2",                 precision: 10, scale: 2
    t.decimal "Others_BLRC2",          precision: 10, scale: 2
    t.decimal "Basic_BLRV5",           precision: 10, scale: 2
    t.decimal "BLRV5",                 precision: 10, scale: 2
    t.decimal "Others_BLRV5",          precision: 10, scale: 2
    t.decimal "Basic_BLRV14",          precision: 10, scale: 2
    t.decimal "BLRV14",                precision: 10, scale: 2
    t.decimal "Others_BLRV14",         precision: 10, scale: 2
    t.decimal "Basic_GOAV20",          precision: 10, scale: 2
    t.decimal "GOAV20",                precision: 10, scale: 2
    t.decimal "Others_GOAV20",         precision: 10, scale: 2
    t.decimal "Basic_DLHC2",           precision: 10, scale: 2
    t.decimal "DLHC2",                 precision: 10, scale: 2
    t.decimal "Others_DLHC2",          precision: 10, scale: 2
    t.decimal "Basic_GOAV5",           precision: 10, scale: 2
    t.decimal "GOAV5",                 precision: 10, scale: 2
    t.decimal "Others_GOAV5",          precision: 10, scale: 2
  end

end
