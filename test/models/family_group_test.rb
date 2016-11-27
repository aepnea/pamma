# == Schema Information
#
# Table name: family_groups
#
#  id                   :integer          not null, primary key
#  name                 :string(255)
#  age                  :integer
#  relationship_type_id :integer
#  activity             :string(255)
#  scholarship_type_id  :integer
#  user_id              :integer
#  created_at           :datetime         not null
#  updated_at           :datetime         not null
#

require 'test_helper'

class FamilyGroupTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
