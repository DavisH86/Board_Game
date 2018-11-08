class CreateFollowships < ActiveRecord::Migration[5.2]
  def change
    create_table :followships do |t|
      t.belongs_to :follower, null: false
			t.belongs_to :followed, null: false

    end
  end
end
