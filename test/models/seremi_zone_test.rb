# == Schema Information
#
# Table name: seremi_zones
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  region_id  :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class SeremiZoneTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
