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

class FamilyGroup < ActiveRecord::Base
  belongs_to :relationship_type
  belongs_to :scholarship_type
  belongs_to :user
end
