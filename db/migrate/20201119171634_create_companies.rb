class CreateCompanies < ActiveRecord::Migration[6.0]
  def change
    create_table :companies do |t|
      t.string :ITNumber
      t.string :Name
      t.string :NameType
      t.string :BusinessName
      t.string :PhysicalAddress
      t.string :Suburb
      t.string :Town
      t.string :Country
      t.string :PostCode
      t.string :PostalAddress
      t.string :PostalSuburb
      t.string :PostalTown
      t.string :PostalCountry
      t.string :PostalPostCode
      t.string :PhoneNo
      t.string :FaxNo
      t.string :RegNo
      t.string :RegStatus
      t.string :RegStatusCode
      t.string :TradingNumber
      t.string :ProductCode
      t.string :ProductDesc
      t.string :ProductType
      t.string :Hours

      t.timestamps
    end
  end
end
