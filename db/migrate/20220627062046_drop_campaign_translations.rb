class DropCampaignTranslations < ActiveRecord::Migration[6.1]
  def change
    drop_table(:campaign_translations, if_exists: true)
  end
end
