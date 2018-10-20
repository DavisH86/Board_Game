class BoardgameShowSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :rating
end
