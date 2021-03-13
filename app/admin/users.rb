ActiveAdmin.register User do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :email, :password_digest, :auth_token, :name, consumers_attributes: [:id, :ConsumerNo, :_destroy]
  #
  # or
  #
  # permit_params do
  #   permitted = [:email, :password_digest, :auth_token, :name]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
  menu label: "Users"

  form do |f|
    f.inputs 'Details' do
      f.input :email
      f.input :name
    end
    
    f.inputs do
      f.has_many :consumers, allow_destroy: true do |a|
        a.input :ConsumerNo
      end
    end

    f.actions
  end

end
