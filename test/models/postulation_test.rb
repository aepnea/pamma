# == Schema Information
#
# Table name: postulations
#
#  id                       :integer          not null, primary key
#  user_id                  :integer
#  asociative_users_id      :integer
#  personal_backgrounds_id  :integer
#  family_group_id          :integer
#  pamma_participation_id   :integer
#  beneficiary_id           :integer
#  characterization_work_id :integer
#  benefit_requested_id     :integer
#  representative_id        :integer
#  postulation_date_id      :integer
#  postulation_state_id     :integer
#  created_at               :datetime         not null
#  updated_at               :datetime         not null
#

require 'test_helper'

class PostulationTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
