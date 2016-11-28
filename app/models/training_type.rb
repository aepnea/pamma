# == Schema Information
#
# Table name: training_types
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class TrainingType < ActiveRecord::Base
  has_many :personal_backgrounds

end
