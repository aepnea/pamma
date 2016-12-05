class BenefitRequested < ActiveRecord::Base
  belongs_to :benefit_type
  belongs_to :user
  belongs_to :asociative_user

  belongs_to :postulation
end
