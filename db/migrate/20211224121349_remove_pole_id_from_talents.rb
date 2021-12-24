class RemovePoleIdFromTalents < ActiveRecord::Migration[6.1]
  def change
    remove_column :talents, :pole_id
  end
end
