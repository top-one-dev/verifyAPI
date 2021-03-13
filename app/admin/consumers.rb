ActiveAdmin.register Consumer do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :user_id, :ConsumerNo, 
                addresses_attributes: [:id, :ConsumerNo, 
                                            :InformationDate, 
                                            :Line1, 
                                            :Line2, 
                                            :Suburb, 
                                            :City, 
                                            :PostalCode, 
                                            :ProvinceCode, 
                                            :Province,
                                            :AddressPeriod,
                                            :OwnerTenant,
                                            :AddressChanged, :_destroy],
                aka_names_attributes: [:id, :RecordSeq,
                                            :Part,
                                            :PartSeq,
                                            :ConsumerNo,
                                            :InformationDate,
                                            :AKAName, :_destroy],
                cons_enq_trans_infos_attributes: [:id,  :DefiniteMatchCount,
                                                        :PossibleMatchCount,
                                                        :MatchedConsumerNo,
                                                        :PossibleConsumerNo,
                                                        :PossibleAdverseIndicator, :_destroy],
                consumer_infos_attributes: [:id,  :RecordSeq,
                                                  :Part,
                                                  :PartSeq,
                                                  :ConsumerNo,
                                                  :Surname,
                                                  :Forename1,
                                                  :Forename2,
                                                  :Forename3,
                                                  :Title,
                                                  :Gender,
                                                  :NameInfoDate,
                                                  :DateOfBirth,
                                                  :IdentityNo1,
                                                  :IdentityNo2,
                                                  :MaritalStatusCode,
                                                  :MaritalStatusDesc,
                                                  :Dependants,
                                                  :SpouseName1,
                                                  :SpouseName2,
                                                  :TelephoneNumbers,
                                                  :DeceasedDate,
                                                  :CellNumber,
                                                  :EMail, :_destroy],
                echo_data_attributes: [:id, :SubscriberCode,
                                            :ClientReference,
                                            :BranchNumber,
                                            :BatchNumber, :_destroy],
                employment_nms_attributes: [:id,  :RecordSeq,
                                                  :Part,
                                                  :PartSeq,
                                                  :ConsumerNo,
                                                  :InformationDate,
                                                  :Occupation,
                                                  :EmployerName,
                                                  :EmploymentPeriod, :_destroy],
                evolution_ccs_attributes: [:id, :ConsumerNo,
                                                :Curr_own_enq,
                                                :prev_own_enq,
                                                :Curr_other_enq,
                                                :prev_other_enq,
                                                :Curr_jdgmnt,
                                                :prev_jdgmnt,
                                                :other_jdgmnt,
                                                :Curr_notices,
                                                :prev_notices,
                                                :other_notices,
                                                :Curr_default,
                                                :prev_default,
                                                :Curr_trace_alerts,
                                                :prev_trace_alerts,
                                                :active_accounts,
                                                :curr_positive_loans,
                                                :curr_higest_mia,
                                                :prev_positive_accounts,
                                                :prev_higest_mia,
                                                :closed_accounts,
                                                :adverse_accounts,
                                                :mnths_in_arrears,
                                                :curr_balance,
                                                :curr_monthly_installment,
                                                :cummulative_arrears_amount,
                                                :filler, :_destroy],
                evolution_ens_attributes: [:id, :ConsumerNo,
                                                :date_of_enquiry,
                                                :enq_subscriber_name,
                                                :enq_subscriber_contact,
                                                :enq_type_cd,
                                                :enq_type_desc,
                                                :own_account,
                                                :loan_reason_cd,
                                                :loan_reason_desc,
                                                :enq_ref_no,
                                                :industry_cd,
                                                :industry_desc,
                                                :message, :_destroy],
                hawk_nhs_attributes: [:id,  :HawkNo,
                                            :HawkCode,
                                            :HawkDesc,
                                            :HawkFound,
                                            :DeceasedDate,
                                            :SubscriberName,
                                            :SubscriberRef,
                                            :ContactName,
                                            :ContactTelCode,
                                            :ContactTelNo,
                                            :VictimReference,
                                            :VictimTelCode,
                                            :VictimTelNo, :_destroy],
                phone_numbers_attributes: [:id, :phone_type,
                                                :AreaCode,
                                                :Number,
                                                :Date,
                                                :Years, :_destroy],
                v1_segs_attributes: [:id, :Code, :Value, :_destroy]
                
  #
  # or
  #
  # permit_params do
  #   permitted = [:user_id, :ConsumerNo]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
  menu label: "Consumers"

  form do |f|
    f.inputs 'Details' do
      f.input :ConsumerNo
    end
    
    f.inputs do
      f.has_many :addresses, allow_destroy: true do |a|
        a.input :InformationDate, as: :datepicker
        a.input :Line1
        a.input :Line2
        a.input :Suburb
        a.input :City
        a.input :PostalCode
        a.input :ProvinceCode
        a.input :Province
        a.input :AddressPeriod
        a.input :OwnerTenant
        a.input :AddressChanged
      end
      f.has_many :aka_names, allow_destroy: true do |a|
        a.input :RecordSeq
        a.input :Part
        a.input :PartSeq
        a.input :ConsumerNo
        a.input :InformationDate, as: :datepicker
        a.input :AKAName
      end
      f.has_many :cons_enq_trans_infos, allow_destroy: true do |a|
        a.input :DefiniteMatchCount
        a.input :PossibleMatchCount
        a.input :MatchedConsumerNo
        a.input :PossibleConsumerNo
        a.input :PossibleAdverseIndicator
      end
      f.has_many :consumer_infos, allow_destroy: true do |a|
        a.input :RecordSeq
        a.input :Part
        a.input :PartSeq
        a.input :ConsumerNo
        a.input :Surname
        a.input :Forename1
        a.input :Forename2
        a.input :Forename3
        a.input :Title
        a.input :Gender
        a.input :NameInfoDate, as: :datepicker
        a.input :DateOfBirth, as: :datepicker
        a.input :IdentityNo1
        a.input :IdentityNo2
        a.input :MaritalStatusCode
        a.input :MaritalStatusDesc
        a.input :Dependants
        a.input :SpouseName1
        a.input :SpouseName2
        a.input :TelephoneNumbers
        a.input :DeceasedDate, as: :datepicker
        a.input :CellNumber
        a.input :EMail
      end
      f.has_many :echo_data, allow_destroy: true do |a|
        a.input :SubscriberCode
        a.input :ClientReference
        a.input :BranchNumber
        a.input :BatchNumber
      end
      f.has_many :employment_nms, allow_destroy: true do |a|
        a.input :RecordSeq
        a.input :Part
        a.input :PartSeq
        a.input :ConsumerNo
        a.input :InformationDate, as: :datepicker
        a.input :Occupation
        a.input :EmployerName
        a.input :EmploymentPeriod
      end
      f.has_many :evolution_ccs, allow_destroy: true do |a|
        a.input :ConsumerNo
        a.input :Curr_own_enq
        a.input :prev_own_enq
        a.input :Curr_other_enq
        a.input :prev_other_enq
        a.input :Curr_jdgmnt
        a.input :prev_jdgmnt
        a.input :other_jdgmnt
        a.input :Curr_notices
        a.input :prev_notices
        a.input :other_notices
        a.input :Curr_default
        a.input :prev_default
        a.input :Curr_trace_alerts
        a.input :prev_trace_alerts
        a.input :active_accounts
        a.input :curr_positive_loans
        a.input :curr_higest_mia
        a.input :prev_positive_accounts
        a.input :prev_higest_mia
        a.input :closed_accounts
        a.input :adverse_accounts
        a.input :mnths_in_arrears
        a.input :curr_balance
        a.input :curr_monthly_installment
        a.input :cummulative_arrears_amount
        a.input :filler
      end
      f.has_many :evolution_ens, allow_destroy: true do |a|
        a.input :ConsumerNo
        a.input :date_of_enquiry, as: :datepicker
        a.input :enq_subscriber_name
        a.input :enq_subscriber_contact
        a.input :enq_type_cd
        a.input :enq_type_desc
        a.input :own_account
        a.input :loan_reason_cd
        a.input :loan_reason_desc
        a.input :enq_ref_no
        a.input :industry_cd
        a.input :industry_desc
        a.input :message
      end
      f.has_many :hawk_nhs, allow_destroy: true do |a|
        a.input :HawkNo
        a.input :HawkCode
        a.input :HawkDesc
        a.input :HawkFound
        a.input :DeceasedDate, as: :datepicker
        a.input :SubscriberName
        a.input :SubscriberRef
        a.input :ContactName
        a.input :ContactTelCode
        a.input :ContactTelNo
        a.input :VictimReference
        a.input :VictimTelCode
        a.input :VictimTelNo
      end
      f.has_many :phone_numbers, allow_destroy: true do |a|
        a.input :phone_type,:label => 'Phone Type', :as => :select, :collection => [["WorkPhone", 1],["HomePhone", 2],["CellPhone", 3]]
        a.input :AreaCode
        a.input :Number
        a.input :Date, as: :datepicker
        a.input :Years
      end
      f.has_many :v1_segs, allow_destroy: true do |a|
        a.input :Code
        a.input :Value
      end
    end

    f.actions
  end

end
