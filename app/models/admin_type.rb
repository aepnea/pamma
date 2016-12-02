# == Schema Information
#
# Table name: admin_types
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class AdminType < ActiveRecord::Base
  has_many :admin_types
end
