class CreateAddresses < ActiveRecord::Migration[6.0]
  def change
    create_table :addresses do |t|
      t.references :consumer, null: false, foreign_key: true
      t.string :ConsumerNo
      t.date :InformationDate
      t.string :Line1
      t.string :Line2
      t.string :Suburb
      t.string :City
      t.string :PostalCode
      t.string :ProvinceCode
      t.string :Province
      t.string :AddressPeriod
      t.string :OwnerTenant
      t.string :AddressChanged

      t.timestamps
    end
  end
end
