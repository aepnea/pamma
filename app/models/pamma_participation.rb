# == Schema Information
#
# Table name: pamma_participations
#
#  id                    :integer          not null, primary key
#  previous_beneficiary  :boolean
#  number_times          :integer
#  benefit_type_id       :integer
#  project_state_type_id :integer
#  support_type_id       :integer
#  user_id               :integer
#  asociative_user_id    :integer
#  created_at            :datetime         not null
#  updated_at            :datetime         not null
#

class PammaParticipation < ActiveRecord::Base
  belongs_to :benefit_type
  belongs_to :project_state_type
  belongs_to :support_type
  belongs_to :user
  belongs_to :asociative_user
  
end
