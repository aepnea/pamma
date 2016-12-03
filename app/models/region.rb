# == Schema Information
#
# Table name: regions
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Region < ActiveRecord::Base
  has_many :provinces
  has_many :asociative_users
  has_many :users
  has_many :characterization_works
  has_many :representatives
  has_many :postulation_dates

end
