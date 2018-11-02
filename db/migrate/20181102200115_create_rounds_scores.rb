class CreateRoundsScores < ActiveRecord::Migration[5.2]
  def change
    create_table :rounds_scores do |t|
      t.integer  :score, null: false
      t.belongs_to :round, null: false
      t.belongs_to :user, null: false

      t.timestamp null: false
    end
  end
end
