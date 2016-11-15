class Province < ActiveRecord::Base
  has_many :communes
  belongs_to :region
end
