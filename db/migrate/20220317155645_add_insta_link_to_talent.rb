class AddInstaLinkToTalent < ActiveRecord::Migration[6.1]
  def change
    add_column :talents, :link_insta, :string
  end
end
