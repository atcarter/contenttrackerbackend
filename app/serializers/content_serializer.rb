class ContentSerializer < ActiveModel::Serializer
  attributes :id, :title, :content_type, :year, :details

end