class CreateHawkNhs < ActiveRecord::Migration[6.0]
  def change
    create_table :hawk_nhs do |t|
      t.references :consumer, null: false, foreign_key: true
      t.string :HawkNo
      t.string :HawkCode
      t.string :HawkDesc
      t.string :HawkFound
      t.date :DeceasedDate
      t.string :SubscriberName
      t.string :SubscriberRef
      t.string :ContactName
      t.string :ContactTelCode
      t.string :ContactTelNo
      t.string :VictimReference
      t.string :VictimTelCode
      t.string :VictimTelNo

      t.timestamps
    end
  end
end
