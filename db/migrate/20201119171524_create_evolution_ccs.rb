class CreateEvolutionCcs < ActiveRecord::Migration[6.0]
  def change
    create_table :evolution_ccs do |t|
      t.references :consumer, null: false, foreign_key: true
      t.string :ConsumerNo
      t.string :Curr_own_enq
      t.string :prev_own_enq
      t.string :Curr_other_enq
      t.string :prev_other_enq
      t.string :Curr_jdgmnt
      t.string :prev_jdgmnt
      t.string :other_jdgmnt
      t.string :Curr_notices
      t.string :prev_notices
      t.string :other_notices
      t.string :Curr_default
      t.string :prev_default
      t.string :Curr_trace_alerts
      t.string :prev_trace_alerts
      t.string :active_accounts
      t.string :curr_positive_loans
      t.string :curr_higest_mia
      t.string :prev_positive_accounts
      t.string :prev_higest_mia
      t.string :closed_accounts
      t.string :adverse_accounts
      t.string :mnths_in_arrears
      t.string :curr_balance
      t.string :curr_monthly_installment
      t.string :cummulative_arrears_amount
      t.string :filler

      t.timestamps
    end
  end
end
