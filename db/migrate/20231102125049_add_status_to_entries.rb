class AddStatusToEntries < ActiveRecord::Migration[7.1]
  def change
    add_column :entries, :status, :string
  end
end
