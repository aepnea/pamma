# == Schema Information
#
# Table name: asociative_users
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
#  name                   :string(255)
#  rut                    :string(255)
#  address                :string(255)
#  village                :string(255)
#  mobile                 :string(255)
#  landline               :string(255)
#  region_id              :integer
#  province_id            :integer
#  commune_id             :integer
#  date_foundation        :date
#  partners_number        :integer
#

require 'test_helper'

class AsociativeUserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
