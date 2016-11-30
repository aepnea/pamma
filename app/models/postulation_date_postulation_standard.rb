# == Schema Information
#
# Table name: postulation_date_postulation_standards
#
#  id                      :integer          not null, primary key
#  postulation_date_id     :integer
#  postulation_standard_id :integer
#  created_at              :datetime         not null
#  updated_at              :datetime         not null
#

class PostulationDatePostulationStandard < ActiveRecord::Base
  belongs_to :postulation_date
  belongs_to :postulation_standard
end
