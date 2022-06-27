class AddTranslatesToCampaign < ActiveRecord::Migration[6.1]
  def change
     add_column :campaigns, :objectif_fr, :text
     add_column :campaigns, :objectif_en, :text
  end
end
