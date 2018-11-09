class BoardgameSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :boardgame_photo
end
