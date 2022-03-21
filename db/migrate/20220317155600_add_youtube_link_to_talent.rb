class AddYoutubeLinkToTalent < ActiveRecord::Migration[6.1]
  def change
    add_column :talents, :link_youtube, :string
  end
end
