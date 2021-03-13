class CompanySerializer < ActiveModel::Serializer
  attributes :id, :ITNumber, :Name, :NameType, :BusinessName, :PhysicalAddress, :Suburb, :Town, :Country, :PostCode, :PostalAddress, :PostalSuburb, :PostalTown, :PostalCountry, :PostalPostCode, :PhoneNo, :FaxNo, :RegNo, :RegStatus, :RegStatusCode, :TradingNumber, :ProductCode, :ProductDesc, :ProductType, :Hours
  has_one :consumer
end
