class Content < ApplicationRecord
  has_many :reviews, dependent: :destroy
end
