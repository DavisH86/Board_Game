class CreateBoardgames < ActiveRecord::Migration[5.2]
  def change
    create_table :boardgames do |t|
      t.string :title, null: false
      t.string :description, null: false
      t.string :rating, null: false

      t.timestamps null: false
    end
  end
end
