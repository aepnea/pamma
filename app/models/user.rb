# == Schema Information
#
# Table name: users
#
#  id                     :integer          not null, primary key
#  email                  :string(255)      default(""), not null
#  encrypted_password     :string(255)      default(""), not null
#  reset_password_token   :string(255)
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  sign_in_count          :integer          default(0), not null
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :string(255)
#  last_sign_in_ip        :string(255)
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#

class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable

### Validando campos al registrarse


validates :minning_society_name, presence: true
validates :minning_society_rut, presence: true
validates :first_name, presence: true
validates :last_name, presence: true
validates :surname, presence: true
validates :rut, presence: true
validates :birthdate, presence: true
validates :gender_id, presence: true
validates :civil_status_id, presence: true
validates :address, presence: true
validates :village, presence: true
validates :mobile, presence: true
validates :landline, presence: true
validates :region_id, presence: true
validates :province_id, presence: true
validates :commune_id, presence: true




  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
