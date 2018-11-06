class CreateFollows < ActiveRecord::Migration[5.2]
  def change
    create_table :follows do |t|
      t.belongs_to :follower, null: false
			t.belongs_to :following, null: false

    end
  end
end
