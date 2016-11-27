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
#  created_at           :datetime         not null
#  updated_at           :datetime         not null
#

class BenefitRequested < ActiveRecord::Base
end
