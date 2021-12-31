class Content < ApplicationRecord
  has_many :reviews, dependent: :destroy

  validates :title, presence: true
  validates :details
  validates :year
end
