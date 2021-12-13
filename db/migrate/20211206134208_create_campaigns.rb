class CreateCampaigns < ActiveRecord::Migration[6.1]
  def change
    create_table :campaigns do |t|
      t.string :name
      t.text :objectif
      t.text :activation
      t.string :reach
      t.boolean :tag

      t.timestamps
    end
  end
end
