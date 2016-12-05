class BenefitRequested < ActiveRecord::Base
  belongs_to :benefit_type
  belongs_to :user
  belongs_to :asociative_user

  belongs_to :postulation
#  has_one :milestone
#  accepts_nested_attributes_for :milestone, :reject_if => :all_blank, :update_only => true, :allow_destroy => true

end
