class Content < ApplicationRecord
  has_many :reviews, dependent: :destroy

  validates :title, presence: true
  validates :content_type, presence: true
  validates :details, presence: true
  validates :year, presence: true
  before_validation :titlecase

  private

  def titlecase
    self.title = self.title.titleize
    self.content_type = self.content_type.titleize
  end
end
