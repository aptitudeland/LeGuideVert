class Step < ApplicationRecord
  belongs_to :package
  has_many :tasks
  has_one_attached :photo
end
