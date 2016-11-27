# == Schema Information
#
# Table name: representatives
#
#  id                 :integer          not null, primary key
#  first_name         :string(255)
#  last_name          :string(255)
#  surname            :string(255)
#  rut                :string(255)
#  gender_id          :integer
#  address            :string(255)
#  village            :string(255)
#  region_id          :integer
#  province_id        :integer
#  commune_id         :integer
#  mobile             :string(255)
#  landline           :string(255)
#  asociative_user_id :integer
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#

require 'test_helper'

class RepresentativeTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
