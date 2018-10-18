class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :name, null: false
      t.string :location, null: false
      t.string :description, null: false
      t.belongs_to :user
      t.belongs_to :boardgame

      t.timestamps null: false
    end
  end
end
