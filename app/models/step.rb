class Step < ApplicationRecord
  belongs_to :package
  has_many :tasks
end
