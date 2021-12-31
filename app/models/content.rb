class Content < ApplicationRecord
  has_many :reviews, dependent: :destroy

  validates :title, presence: true
  validates :type, presence: true
  validates :details, presence: true
  validates :year, presence: true
  before_validation :titlecase

  private

  def titlecase
    self.title = self.title.titleize
    self.type = self.type.titleize
  end
end
