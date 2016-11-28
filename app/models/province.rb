# == Schema Information
#
# Table name: provinces
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  region_id  :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Province < ActiveRecord::Base
  has_many :communes
  belongs_to :region
  has_many :provinces
  has_many :asociative_users
  has_many :users
  has_many :characterization_works
  has_many :representatives
end
