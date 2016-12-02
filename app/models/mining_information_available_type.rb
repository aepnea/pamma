# == Schema Information
#
# Table name: mining_information_available_types
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class MiningInformationAvailableType < ActiveRecord::Base
  has_many :characterization_works

end
