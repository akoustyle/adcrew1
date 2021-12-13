class CreateTalents < ActiveRecord::Migration[6.1]
  def change
    create_table :talents do |t|
      t.string :name
      t.text :about
      t.string :type
      t.string :audience_male
      t.string :audience_female
      t.string :insta_link
      t.string :insta_eng
      t.string :tiktok_link
      t.string :tiktok_eng
      t.string :youtube_link
      t.string :youtube_eng

      t.timestamps
    end
  end
end
