# == Schema Information
#
# Table name: social_record_status_types
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class SocialRecordStatusType < ActiveRecord::Base
end
