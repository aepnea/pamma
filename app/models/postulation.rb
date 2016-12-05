# == Schema Information
#
# Table name: postulations
#
#  id                       :integer          not null, primary key
#  user_id                  :integer
#  asociative_users_id      :integer
#  personal_backgrounds_id  :integer
#  family_group_id          :integer
#  pamma_participation_id   :integer
#  beneficiary_id           :integer
#  characterization_work_id :integer
#  benefit_requested_id     :integer
#  representative_id        :integer
#  postulation_date_id      :integer
#  postulation_state_id     :integer
#  created_at               :datetime         not null
#  updated_at               :datetime         not null
#

class Postulation < ActiveRecord::Base
  belongs_to :user
  belongs_to :asociative_user
  belongs_to :personal_background
  belongs_to :family_group
  belongs_to :pamma_participation
  belongs_to :beneficiary
  belongs_to :characterization_work
  has_one :benefit_requested
  belongs_to :representative
  belongs_to :postulation_date
  belongs_to :postulation_state
  has_many :milestones

end
