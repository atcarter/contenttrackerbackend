class Content < ApplicationRecord
  has_many :reviews, dependent: :destroy

  validates :title, presence: true
  validates :details
  validates :year
  before_validation :titlecase

  private

  def titlecase
    self.title = self.title.titleize
  end
end
