class Consumer < ApplicationRecord
  belongs_to :user

  has_many :addresses, dependent: :destroy
  has_many :aka_names, dependent: :destroy
  has_many :cons_enq_trans_infos, dependent: :destroy
  has_many :consumer_infos, dependent: :destroy
  has_many :echo_data, dependent: :destroy
  has_many :employment_nms, dependent: :destroy
  has_many :evolution_ccs, dependent: :destroy
  has_many :evolution_ens, dependent: :destroy
  has_many :hawk_nhs, dependent: :destroy
  has_many :phone_numbers, dependent: :destroy
  has_many :v1_segs, dependent: :destroy

  accepts_nested_attributes_for :addresses, :allow_destroy => true
  accepts_nested_attributes_for :aka_names, :allow_destroy => true
  accepts_nested_attributes_for :cons_enq_trans_infos, :allow_destroy => true
  accepts_nested_attributes_for :consumer_infos, :allow_destroy => true
  accepts_nested_attributes_for :echo_data, :allow_destroy => true
  accepts_nested_attributes_for :employment_nms, :allow_destroy => true
  accepts_nested_attributes_for :evolution_ccs, :allow_destroy => true
  accepts_nested_attributes_for :evolution_ens, :allow_destroy => true
  accepts_nested_attributes_for :hawk_nhs, :allow_destroy => true
  accepts_nested_attributes_for :phone_numbers, :allow_destroy => true
  accepts_nested_attributes_for :v1_segs, :allow_destroy => true  

end
