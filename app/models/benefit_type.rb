# == Schema Information
#
# Table name: benefit_types
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class BenefitType < ActiveRecord::Base
  has_many :pamma_participations
  has_many :benefit_requesteds
end
