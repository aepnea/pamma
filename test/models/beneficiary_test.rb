# == Schema Information
#
# Table name: beneficiaries
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  rut        :string(255)
#  address    :string(255)
#  age        :integer
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class BeneficiaryTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
