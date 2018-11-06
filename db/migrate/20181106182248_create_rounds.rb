class CreateRounds < ActiveRecord::Migration[5.2]
  def change
    create_table :rounds do |t|
      t.integer :number, null: false
      t.belongs_to :event
      t.belongs_to :boardgame

      t.timestamps 
    end
  end
end
