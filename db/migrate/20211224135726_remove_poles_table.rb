class RemovePolesTable < ActiveRecord::Migration[6.1]
  def change
    drop_table :poles
  end
end
