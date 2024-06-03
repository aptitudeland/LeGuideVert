class GardenStep < ApplicationRecord
  belongs_to :step
  belongs_to :garden
end
