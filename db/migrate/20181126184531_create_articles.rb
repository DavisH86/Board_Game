class CreateArticles < ActiveRecord::Migration[5.2]
  def change
    create_table :articles do |t|
      t.string :title, null: false
      t.text :description, null: false
      t.belongs_to :user

      t.timestamps null: false
    end
  end
end
