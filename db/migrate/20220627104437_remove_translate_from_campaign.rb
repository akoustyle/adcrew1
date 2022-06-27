class RemoveTranslateFromCampaign < ActiveRecord::Migration[6.1]
  def change
    remove_column :campaigns, :objectif_fr, :text
    remove_column :campaigns, :objectif_en, :text
  end
end
