# == Schema Information
#
# Table name: beneficiaries
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  rut        :string(255)
#  address    :string(255)
#  age        :integer
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Beneficiary < ActiveRecord::Base
  belongs_to :user
end
