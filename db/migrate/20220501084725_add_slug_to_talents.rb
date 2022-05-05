class AddSlugToTalents < ActiveRecord::Migration[6.1]
  def change
    add_column :talents, :slug, :string
    add_index :talents, :slug, unique: true
  end
end
