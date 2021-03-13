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

ActiveRecord::Schema.define(version: 2020_11_20_023258) do

  create_table "active_admin_comments", force: :cascade do |t|
    t.string "namespace"
    t.text "body"
    t.string "resource_type"
    t.integer "resource_id"
    t.string "author_type"
    t.integer "author_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id"
    t.index ["namespace"], name: "index_active_admin_comments_on_namespace"
    t.index ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id"
  end

  create_table "addresses", force: :cascade do |t|
    t.integer "consumer_id", null: false
    t.string "ConsumerNo"
    t.date "InformationDate"
    t.string "Line1"
    t.string "Line2"
    t.string "Suburb"
    t.string "City"
    t.string "PostalCode"
    t.string "ProvinceCode"
    t.string "Province"
    t.string "AddressPeriod"
    t.string "OwnerTenant"
    t.string "AddressChanged"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["consumer_id"], name: "index_addresses_on_consumer_id"
  end

  create_table "admin_users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_admin_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true
  end

  create_table "aka_names", force: :cascade do |t|
    t.integer "consumer_id", null: false
    t.string "RecordSeq"
    t.string "Part"
    t.string "PartSeq"
    t.string "ConsumerNo"
    t.date "InformationDate"
    t.string "AKAName"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["consumer_id"], name: "index_aka_names_on_consumer_id"
  end

  create_table "companies", force: :cascade do |t|
    t.string "ITNumber"
    t.string "Name"
    t.string "NameType"
    t.string "BusinessName"
    t.string "PhysicalAddress"
    t.string "Suburb"
    t.string "Town"
    t.string "Country"
    t.string "PostCode"
    t.string "PostalAddress"
    t.string "PostalSuburb"
    t.string "PostalTown"
    t.string "PostalCountry"
    t.string "PostalPostCode"
    t.string "PhoneNo"
    t.string "FaxNo"
    t.string "RegNo"
    t.string "RegStatus"
    t.string "RegStatusCode"
    t.string "TradingNumber"
    t.string "ProductCode"
    t.string "ProductDesc"
    t.string "ProductType"
    t.string "Hours"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "cons_enq_trans_infos", force: :cascade do |t|
    t.integer "consumer_id", null: false
    t.string "DefiniteMatchCount"
    t.string "PossibleMatchCount"
    t.string "MatchedConsumerNo"
    t.string "PossibleConsumerNo"
    t.string "PossibleAdverseIndicator"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["consumer_id"], name: "index_cons_enq_trans_infos_on_consumer_id"
  end

  create_table "consumer_infos", force: :cascade do |t|
    t.integer "consumer_id", null: false
    t.string "RecordSeq"
    t.string "Part"
    t.string "PartSeq"
    t.string "ConsumerNo"
    t.string "Surname"
    t.string "Forename1"
    t.string "Forename2"
    t.string "Forename3"
    t.string "Title"
    t.string "Gender"
    t.date "NameInfoDate"
    t.date "DateOfBirth"
    t.string "IdentityNo1"
    t.string "IdentityNo2"
    t.integer "MaritalStatusCode"
    t.string "MaritalStatusDesc"
    t.string "Dependants"
    t.string "SpouseName1"
    t.string "SpouseName2"
    t.string "TelephoneNumbers"
    t.date "DeceasedDate"
    t.string "CellNumber"
    t.string "EMail"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["consumer_id"], name: "index_consumer_infos_on_consumer_id"
  end

  create_table "consumers", force: :cascade do |t|
    t.integer "user_id", null: false
    t.string "ConsumerNo"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_consumers_on_user_id"
  end

  create_table "echo_data", force: :cascade do |t|
    t.integer "consumer_id", null: false
    t.string "SubscriberCode"
    t.string "ClientReference"
    t.string "BranchNumber"
    t.string "BatchNumber"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["consumer_id"], name: "index_echo_data_on_consumer_id"
  end

  create_table "employment_nms", force: :cascade do |t|
    t.integer "consumer_id", null: false
    t.string "RecordSeq"
    t.string "Part"
    t.string "PartSeq"
    t.string "ConsumerNo"
    t.string "InformationDate"
    t.string "Occupation"
    t.string "EmployerName"
    t.string "EmploymentPeriod"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["consumer_id"], name: "index_employment_nms_on_consumer_id"
  end

  create_table "evolution_ccs", force: :cascade do |t|
    t.integer "consumer_id", null: false
    t.string "ConsumerNo"
    t.string "Curr_own_enq"
    t.string "prev_own_enq"
    t.string "Curr_other_enq"
    t.string "prev_other_enq"
    t.string "Curr_jdgmnt"
    t.string "prev_jdgmnt"
    t.string "other_jdgmnt"
    t.string "Curr_notices"
    t.string "prev_notices"
    t.string "other_notices"
    t.string "Curr_default"
    t.string "prev_default"
    t.string "Curr_trace_alerts"
    t.string "prev_trace_alerts"
    t.string "active_accounts"
    t.string "curr_positive_loans"
    t.string "curr_higest_mia"
    t.string "prev_positive_accounts"
    t.string "prev_higest_mia"
    t.string "closed_accounts"
    t.string "adverse_accounts"
    t.string "mnths_in_arrears"
    t.string "curr_balance"
    t.string "curr_monthly_installment"
    t.string "cummulative_arrears_amount"
    t.string "filler"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["consumer_id"], name: "index_evolution_ccs_on_consumer_id"
  end

  create_table "evolution_ens", force: :cascade do |t|
    t.integer "consumer_id", null: false
    t.string "ConsumerNo"
    t.date "date_of_enquiry"
    t.string "enq_subscriber_name"
    t.string "enq_subscriber_contact"
    t.string "enq_type_cd"
    t.string "enq_type_desc"
    t.string "own_account"
    t.string "loan_reason_cd"
    t.string "loan_reason_desc"
    t.string "enq_ref_no"
    t.string "industry_cd"
    t.string "industry_desc"
    t.string "message"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["consumer_id"], name: "index_evolution_ens_on_consumer_id"
  end

  create_table "hawk_nhs", force: :cascade do |t|
    t.integer "consumer_id", null: false
    t.string "HawkNo"
    t.string "HawkCode"
    t.string "HawkDesc"
    t.string "HawkFound"
    t.date "DeceasedDate"
    t.string "SubscriberName"
    t.string "SubscriberRef"
    t.string "ContactName"
    t.string "ContactTelCode"
    t.string "ContactTelNo"
    t.string "VictimReference"
    t.string "VictimTelCode"
    t.string "VictimTelNo"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["consumer_id"], name: "index_hawk_nhs_on_consumer_id"
  end

  create_table "phone_numbers", force: :cascade do |t|
    t.integer "consumer_id", null: false
    t.integer "phone_type"
    t.string "AreaCode"
    t.string "Number"
    t.date "Date"
    t.string "Years"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["consumer_id"], name: "index_phone_numbers_on_consumer_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "password_digest"
    t.string "auth_token"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "v1_segs", force: :cascade do |t|
    t.integer "consumer_id", null: false
    t.string "Code"
    t.string "Value"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["consumer_id"], name: "index_v1_segs_on_consumer_id"
  end

  add_foreign_key "addresses", "consumers"
  add_foreign_key "aka_names", "consumers"
  add_foreign_key "cons_enq_trans_infos", "consumers"
  add_foreign_key "consumer_infos", "consumers"
  add_foreign_key "consumers", "users"
  add_foreign_key "echo_data", "consumers"
  add_foreign_key "employment_nms", "consumers"
  add_foreign_key "evolution_ccs", "consumers"
  add_foreign_key "evolution_ens", "consumers"
  add_foreign_key "hawk_nhs", "consumers"
  add_foreign_key "phone_numbers", "consumers"
  add_foreign_key "v1_segs", "consumers"
end
