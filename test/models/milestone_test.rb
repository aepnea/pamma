# == Schema Information
#
# Table name: milestones
#
#  id                 :integer          not null, primary key
#  name               :string(255)
#  description        :text(65535)
#  date_begin         :date
#  date_end           :date
#  user_id            :integer
#  asociative_user_id :integer
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#

require 'test_helper'

class MilestoneTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
