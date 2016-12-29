# == Schema Information
#
# Table name: scholarship_types
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class ScholarshipType < ActiveRecord::Base
  has_many :personal_backgrounds
  has_many :family_groups
end
