# == Schema Information
#
# Table name: personal_backgrounds
#
#  id                           :integer          not null, primary key
#  scholarship_type_id          :integer
#  retirement_system_type_id    :integer
#  activity_type                :integer
#  training_type_id             :integer
#  social_record_status_type_id :integer
#  score                        :integer
#  last_poll                    :date
#  user_id                      :integer
#  created_at                   :datetime         not null
#  updated_at                   :datetime         not null
#

class PersonalBackground < ActiveRecord::Base
  belongs_to :scholarship_type
  belongs_to :retirement_system_type
  belongs_to :training_type
  belongs_to :activity_type
  belongs_to :user

  has_many :postulations
  
end
