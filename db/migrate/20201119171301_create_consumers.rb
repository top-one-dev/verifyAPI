class CreateConsumers < ActiveRecord::Migration[6.0]
  def change
    create_table :consumers do |t|
      t.references :user, null: false, foreign_key: true
      t.string :ConsumerNo

      t.timestamps
    end
  end
end
