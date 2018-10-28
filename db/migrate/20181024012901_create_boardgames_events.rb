class CreateBoardgamesEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :boardgames_events do |t|
      t.belongs_to :boardgame
      t.belongs_to :event

      t.timestamps null: false
    end
  end
end
