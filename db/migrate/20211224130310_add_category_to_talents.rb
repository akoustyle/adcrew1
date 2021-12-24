class AddCategoryToTalents < ActiveRecord::Migration[6.1]
  def change
    add_column :talents, :category, :string
  end
end
