class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.string :body, null: false
      t.belongs_to :user, null: false
      t.belongs_to :event, null: false
      t.timestamps null: false
    end
  end
end
