# == Schema Information
#
# Table name: seremi_zones
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  region_id  :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class SeremiZone < ActiveRecord::Base
end
