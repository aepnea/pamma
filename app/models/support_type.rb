# == Schema Information
#
# Table name: support_types
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class SupportType < ActiveRecord::Base
  has_many :pamma_participations
end
