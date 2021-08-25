class Review < ApplicationRecord
  belongs_to :restaurant

  # validates_inclusion_of :rating, in: 0..5
  validates :content, presence: true
  validates :rating, presence: true, inclusion: { in: 0..5 }, numericality: { only_integer: true }
end
