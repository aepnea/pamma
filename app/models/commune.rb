# == Schema Information
#
# Table name: communes
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  province_id :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Commune < ActiveRecord::Base
  belongs_to :province
  has_many :provinces
  has_many :asociative_users
  has_many :users
  has_many :characterization_works
  has_many :representatives
end
