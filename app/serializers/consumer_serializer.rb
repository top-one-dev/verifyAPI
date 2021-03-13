class ConsumerSerializer < ActiveModel::Serializer
  attributes :id, :ConsumerNo
  has_one :user

  has_many :addresses
  has_many :aka_names
  has_many :cons_enq_trans_infos
  has_many :consumer_infos
  has_many :echo_datums
  has_many :employment_nms
  has_many :evolution_ccs
  has_many :evolution_ens
  has_many :hawk_nhs
  has_many :phone_numbers
  has_many :v1_segs
  has_many :companies
  
end
