# == Schema Information
#
# Table name: characterization_works
#
#  id                                     :integer          not null, primary key
#  work_name                              :string(255)
#  location                               :string(255)
#  sector                                 :string(255)
#  mountain_range                         :string(255)
#  region_id                              :integer
#  province_id                            :integer
#  commune_id                             :integer
#  utm_north_coordinate                   :float(24)
#  utm_east_coordinate                    :float(24)
#  buyer_power                            :string(255)
#  distance                               :string(255)
#  mining_district                        :string(255)
#  number_workers                         :integer
#  owner_type_id                          :integer
#  mining_properties_constitution_type_id :integer
#  operation_type_id                      :integer
#  extracted_mineral_type_id              :integer
#  mining_information_available_type_id   :integer
#  user_id                                :integer
#  asociative_user_id                     :integer
#  created_at                             :datetime         not null
#  updated_at                             :datetime         not null
#

class CharacterizationWork < ActiveRecord::Base
  belongs_to :region
  belongs_to :province
  belongs_to :commune
  belongs_to :owner_type
  belongs_to :mining_properties_constitution_type
  belongs_to :operation_type
  belongs_to :extracted_mineral_type
  belongs_to :mining_information_available_type
  belongs_to :user
  belongs_to :asociative_user

  has_many :postulations

end
