class Garden < ApplicationRecord

  attr_accessor :current_step
  belongs_to :user
  has_many :garden_steps, dependent: :destroy
  has_one_attached :photo
end

def current_step
  @current_step ||= 1
end

def current_step=(step)
  @current_step = step.to_i
end
