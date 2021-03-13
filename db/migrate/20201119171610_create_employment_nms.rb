class CreateEmploymentNms < ActiveRecord::Migration[6.0]
  def change
    create_table :employment_nms do |t|
      t.references :consumer, null: false, foreign_key: true
      t.string :RecordSeq
      t.string :Part
      t.string :PartSeq
      t.string :ConsumerNo
      t.string :InformationDate
      t.string :Occupation
      t.string :EmployerName
      t.string :EmploymentPeriod

      t.timestamps
    end
  end
end
