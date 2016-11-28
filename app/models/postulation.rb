class Postulation < ActiveRecord::Base
  belongs_to :user
  belongs_to :asociative_user
  belongs_to :personal_background
  belongs_to :family_group
  belongs_to :pamma_participation
  belongs_to :beneficiary
  belongs_to :characterization_work
  belongs_to :benefit_requested
  belongs_to :representative
  
end
