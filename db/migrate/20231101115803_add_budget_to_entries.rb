class AddBudgetToEntries < ActiveRecord::Migration[7.1]
  def change
    add_column :entries, :budget, :integer
  end
end
