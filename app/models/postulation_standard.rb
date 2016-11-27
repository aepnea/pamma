# == Schema Information
#
# Table name: postulation_standards
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  weighing   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class PostulationStandard < ActiveRecord::Base
end
