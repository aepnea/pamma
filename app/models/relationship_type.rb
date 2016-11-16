# == Schema Information
#
# Table name: relationship_types
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class RelationshipType < ActiveRecord::Base
end
