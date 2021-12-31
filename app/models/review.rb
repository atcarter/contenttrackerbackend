class Review < ApplicationRecord
  belongs_to :content

  validates :username, presence: true
  validates :rating, numericality: { less_than: 6, greater_than: 0 }
  validates :description, presence: true
end
