ActiveAdmin.register Company do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :consumer_id, :ITNumber, :Name, :NameType, :BusinessName, :PhysicalAddress, :Suburb, :Town, :Country, :PostCode, :PostalAddress, :PostalSuburb, :PostalTown, :PostalCountry, :PostalPostCode, :PhoneNo, :FaxNo, :RegNo, :RegStatus, :RegStatusCode, :TradingNumber, :ProductCode, :ProductDesc, :ProductType, :Hours
  #
  # or
  #
  # permit_params do
  #   permitted = [:consumer_id, :ITNumber, :Name, :NameType, :BusinessName, :PhysicalAddress, :Suburb, :Town, :Country, :PostCode, :PostalAddress, :PostalSuburb, :PostalTown, :PostalCountry, :PostalPostCode, :PhoneNo, :FaxNo, :RegNo, :RegStatus, :RegStatusCode, :TradingNumber, :ProductCode, :ProductDesc, :ProductType, :Hours]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
  menu label: "Companies"

end
