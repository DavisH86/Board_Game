class BoardgameSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :rating
end
