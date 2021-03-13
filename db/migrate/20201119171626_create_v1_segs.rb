class CreateV1Segs < ActiveRecord::Migration[6.0]
  def change
    create_table :v1_segs do |t|
      t.references :consumer, null: false, foreign_key: true
      t.string :Code
      t.string :Value

      t.timestamps
    end
  end
end
