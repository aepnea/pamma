# == Schema Information
#
# Table name: benefit_requesteds
#
#  id                   :integer          not null, primary key
#  benefit_type_id      :integer
#  estimated_investment :integer
#  comments             :text(65535)
#  user_id              :integer
#  asociative_user_id   :integer
#  postulation_id       :integer
#  created_at           :datetime         not null
#  updated_at           :datetime         not null
#

class BenefitRequested < ActiveRecord::Base
  belongs_to :benefit_type
  belongs_to :user
  belongs_to :asociative_user

  belongs_to :postulation
  belongs_to :postulation_date
#  has_one :milestone
#  accepts_nested_attributes_for :milestone, :reject_if => :all_blank, :update_only => true, :allow_destroy => true

end
