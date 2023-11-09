class AddDeadlineToEntries < ActiveRecord::Migration[7.1]
  def change
    add_column :entries, :deadline, :datetime
  end
end
