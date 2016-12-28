# == Schema Information
#
# Table name: postulation_dates
#
#  id                      :integer          not null, primary key
#  name                    :string(255)
#  date_begin              :date
#  date_end                :date
#  user_type               :string(255)
#  postulation_standard_id :integer
#  state                   :boolean
#  region_id               :integer
#  created_at              :datetime         not null
#  updated_at              :datetime         not null
#

class PostulationDate < ActiveRecord::Base
end
