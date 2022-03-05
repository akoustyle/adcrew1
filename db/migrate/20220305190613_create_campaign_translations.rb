class CreateCampaignTranslations < ActiveRecord::Migration[6.1]
  def up
    Campaign.create_translation_table!({
      objectif: :text,
      activation: :string,
      sentence: :text,
      sentence2: :text
    }, {
      migrate_data: true
    })
  end
  def down

  end
end
