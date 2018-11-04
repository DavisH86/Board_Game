class CreateScores < ActiveRecord::Migration[5.2]
  def change
    create_table :scores do |t|
      t.integer :win, null: false
      t.integer :lose, null: false
      t.belongs_to :user, null: false
      t.belongs_to :event, null: false
      t.belongs_to :boardgame, null: false

      t.timestamps null: false
    end
  end
end
