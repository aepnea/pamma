# == Schema Information
#
# Table name: postulations
#
#  id                       :integer          not null, primary key
#  user_id                  :integer
#  asociative_user_id       :integer
#  personal_backgrounds_id  :integer
#  family_group_id          :integer
#  pamma_participation_id   :integer
#  beneficiary_id           :integer
#  characterization_work_id :integer
#  benefit_requested_id     :integer
#  representative_id        :integer
#  milestone_name           :string(255)
#  milestone_description    :text(65535)
#  milestone_date_begin     :date
#  milestone_date_end       :date
#  created_at               :datetime         not null
#  updated_at               :datetime         not null
#

require 'test_helper'

class PostulationTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end