# == Schema Information
#
# Table name: owner_types
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class OwnerType < ActiveRecord::Base
end
