class CreateConsumerInfos < ActiveRecord::Migration[6.0]
  def change
    create_table :consumer_infos do |t|
      t.references :consumer, null: false, foreign_key: true
      t.string :RecordSeq
      t.string :Part
      t.string :PartSeq
      t.string :ConsumerNo
      t.string :Surname
      t.string :Forename1
      t.string :Forename2
      t.string :Forename3
      t.string :Title
      t.string :Gender
      t.date :NameInfoDate
      t.date :DateOfBirth
      t.string :IdentityNo1
      t.string :IdentityNo2
      t.integer :MaritalStatusCode
      t.string :MaritalStatusDesc
      t.string :Dependants
      t.string :SpouseName1
      t.string :SpouseName2
      t.string :TelephoneNumbers
      t.date :DeceasedDate
      t.string :CellNumber
      t.string :EMail

      t.timestamps
    end
  end
end
