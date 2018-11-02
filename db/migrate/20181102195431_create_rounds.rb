class CreateRounds < ActiveRecord::Migration[5.2]
  def change
    create_table :rounds do |t|
      t.datetime :date, null: false
      t.belongs_to :boardgame, null: false

      t.timestamp null: false
    end
  end
end
