# == Schema Information
#
# Table name: representatives
#
#  id                 :integer          not null, primary key
#  first_name         :string(255)
#  last_name          :string(255)
#  surname            :string(255)
#  rut                :string(255)
#  gender_id          :integer
#  address            :string(255)
#  village            :string(255)
#  region_id          :integer
#  province_id        :integer
#  commune_id         :integer
#  mobile             :string(255)
#  landline           :string(255)
#  asociative_user_id :integer
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#

class Representative < ActiveRecord::Base
  belongs_to :gender
  belongs_to :region
  belongs_to :province
  belongs_to :commune
  belongs_to :asociative_user

  
end
