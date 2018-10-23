class CreateGroupsUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :groups_users do |t|
      t.belongs_to :user
      t.belongs_to :group

      t.timestamps null: false
    end
  end
end
