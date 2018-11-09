class AddBoardgamePhotoToBoardgames < ActiveRecord::Migration[5.2]
  def change
    add_column :boardgames, :boardgame_photo, :string
  end
end
