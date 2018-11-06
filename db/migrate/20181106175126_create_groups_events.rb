class CreateGroupsEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :groups_events do |t|
      t.belongs_to :group
      t.belongs_to :event
      t.timestamps null: false
    end
  end
end
