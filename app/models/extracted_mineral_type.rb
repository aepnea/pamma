# == Schema Information
#
# Table name: extracted_mineral_types
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class ExtractedMineralType < ActiveRecord::Base
  has_many :characterization_works

end
