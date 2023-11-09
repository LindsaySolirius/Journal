class RenameNameToTitle < ActiveRecord::Migration[7.1]
  def change
    rename_column :entries, :name, :title
  end
end
