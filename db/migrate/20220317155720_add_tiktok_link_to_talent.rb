class AddTiktokLinkToTalent < ActiveRecord::Migration[6.1]
  def change
    add_column :talents, :link_tiktok, :string
  end
end
