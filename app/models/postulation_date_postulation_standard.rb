class PostulationDatePostulationStandard < ActiveRecord::Base
  belongs_to :postulation_date
  belongs_to :postulation_standard
end
