class CreateAkaNames < ActiveRecord::Migration[6.0]
  def change
    create_table :aka_names do |t|
      t.references :consumer, null: false, foreign_key: true
      t.string :RecordSeq
      t.string :Part
      t.string :PartSeq
      t.string :ConsumerNo
      t.date :InformationDate
      t.string :AKAName

      t.timestamps
    end
  end
end
