class Garden < ApplicationRecord
  belongs_to :user
  has_many :garden_steps
end
