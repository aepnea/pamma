# == Schema Information
#
# Table name: personal_backgrounds
#
#  id                           :integer          not null, primary key
#  scholarship_type_id          :integer
#  retirement_system_type_id    :integer
#  activity_type_id             :integer
#  training_type_id             :integer
#  social_record_status_type_id :integer
#  score                        :integer
#  last_poll                    :date
#  user_id                      :integer
#  created_at                   :datetime         not null
#  updated_at                   :datetime         not null
#

require 'test_helper'

class PersonalBackgroundTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
