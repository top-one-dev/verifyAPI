class CreatePhoneNumbers < ActiveRecord::Migration[6.0]
  def change
    create_table :phone_numbers do |t|
      t.references :consumer, null: false, foreign_key: true
      t.integer :phone_type
      t.string :AreaCode
      t.string :Number
      t.date :Date
      t.string :Years

      t.timestamps
    end
  end
end
