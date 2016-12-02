# == Schema Information
#
# Table name: characterization_works
#
#  id                                     :integer          not null, primary key
#  work_name                              :string(255)
#  localization                           :string(255)
#  sector                                 :string(255)
#  mountain_range                         :string(255)
#  region_id                              :integer
#  province_id                            :integer
#  commune_id                             :integer
#  utm_north_coordinate                   :integer
#  utm_east_coordinate                    :integer
#  buyer_power                            :string(255)
#  distance                               :integer
#  mining_district                        :string(255)
#  number_workers                         :integer
#  owner_type_id                          :integer
#  mining_properties_constitution_type_id :integer
#  operation_type_id                      :integer
#  extracted_mineral_type_id              :integer
#  mining_information_available_type_id   :integer
#  drill                                  :boolean
#  winch                                  :boolean
#  compressor                             :boolean
#  electric_generator                     :boolean
#  wagon                                  :boolean
#  user_id                                :integer
#  asociative_user_id                     :integer
#  created_at                             :datetime         not null
#  updated_at                             :datetime         not null
#

require 'test_helper'

class CharacterizationWorkTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
