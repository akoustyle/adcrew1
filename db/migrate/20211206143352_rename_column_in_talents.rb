class RenameColumnInTalents < ActiveRecord::Migration[6.1]
  def change
    rename_column :talents, :type, :title
  end
end
