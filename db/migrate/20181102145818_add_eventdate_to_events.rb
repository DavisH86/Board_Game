class AddEventdateToEvents < ActiveRecord::Migration[5.2]
  def change
    add_column :events, :eventdate, :datetime
  end
end
