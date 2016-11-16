# == Schema Information
#
# Table name: mining_properties_constitution_types
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class MiningPropertiesConstitutionType < ActiveRecord::Base
end
