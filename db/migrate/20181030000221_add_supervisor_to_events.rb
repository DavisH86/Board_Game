class AddSupervisorToEvents < ActiveRecord::Migration[5.2]
  def change
    add_column :events, :supervisor_id, :integer, null: false
  end
end
