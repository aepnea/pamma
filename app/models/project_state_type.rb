# == Schema Information
#
# Table name: project_state_types
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class ProjectStateType < ActiveRecord::Base
  has_many :pamma_participations
end
