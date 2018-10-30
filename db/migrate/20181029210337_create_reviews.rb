class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.string :body, null: false
      t.integer :rating, null: false
      t.belongs_to :boardgame
      t.belongs_to :event
      t.belongs_to :group
      
      t.timestamps null: false
    end
  end
end
