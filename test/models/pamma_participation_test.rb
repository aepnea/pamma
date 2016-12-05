# == Schema Information
#
# Table name: pamma_participations
#
#  id                    :integer          not null, primary key
#  previous_beneficiary  :string(255)
#  number_times          :integer
#  benefit_type_id       :integer
#  project_state_type_id :integer
#  support_type_id       :integer
#  user_id               :integer
#  asociative_user_id    :integer
#  created_at            :datetime         not null
#  updated_at            :datetime         not null
#

require 'test_helper'

class PammaParticipationTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
