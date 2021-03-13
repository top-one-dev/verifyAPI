class CreateEvolutionEns < ActiveRecord::Migration[6.0]
  def change
    create_table :evolution_ens do |t|
      t.references :consumer, null: false, foreign_key: true
      t.string :ConsumerNo
      t.date :date_of_enquiry
      t.string :enq_subscriber_name
      t.string :enq_subscriber_contact
      t.string :enq_type_cd
      t.string :enq_type_desc
      t.string :own_account
      t.string :loan_reason_cd
      t.string :loan_reason_desc
      t.string :enq_ref_no
      t.string :industry_cd
      t.string :industry_desc
      t.string :message

      t.timestamps
    end
  end
end
