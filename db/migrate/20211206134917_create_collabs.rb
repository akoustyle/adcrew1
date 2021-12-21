class CreateCollabs < ActiveRecord::Migration[6.1]
  def change
    create_table :collabs do |t|
      t.references :talent, null: true, foreign_key: true
      t.references :campaign, null: true, foreign_key: true

      t.timestamps
    end
  end
end
