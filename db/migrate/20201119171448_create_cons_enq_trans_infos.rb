class CreateConsEnqTransInfos < ActiveRecord::Migration[6.0]
  def change
    create_table :cons_enq_trans_infos do |t|
      t.references :consumer, null: false, foreign_key: true
      t.string :DefiniteMatchCount
      t.string :PossibleMatchCount
      t.string :MatchedConsumerNo
      t.string :PossibleConsumerNo
      t.string :PossibleAdverseIndicator

      t.timestamps
    end
  end
end
