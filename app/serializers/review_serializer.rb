class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :username, :rating, :description, :content_id

end