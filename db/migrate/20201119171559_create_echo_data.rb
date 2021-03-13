class CreateEchoData < ActiveRecord::Migration[6.0]
  def change
    create_table :echo_data do |t|
      t.references :consumer, null: false, foreign_key: true
      t.string :SubscriberCode
      t.string :ClientReference
      t.string :BranchNumber
      t.string :BatchNumber

      t.timestamps
    end
  end
end
