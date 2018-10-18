class CreateGroups < ActiveRecord::Migration[5.2]
  def change
    create_table :groups do |t|
      t.belongs_to :users, null: false
      t.belongs_to :boardgame, null: false

      t.timestamps null: false
    end
  end
end
