# == Schema Information
#
# Table name: retirement_system_types
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class RetirementSystemType < ActiveRecord::Base
  has_many :personal_backgrounds

end
