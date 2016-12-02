# == Schema Information
#
# Table name: gender_types
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class GenderType < ActiveRecord::Base
  has_many :users
  has_many :representatives


end
