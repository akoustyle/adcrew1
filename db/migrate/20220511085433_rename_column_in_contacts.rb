class RenameColumnInContacts < ActiveRecord::Migration[6.1]
  def change
    rename_column :contacts, :entrepprise, :entreprise
  end
end
