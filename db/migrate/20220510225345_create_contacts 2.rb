class CreateContacts < ActiveRecord::Migration[6.1]
  def change
    create_table :contacts do |t|
      t.string :email
      t.string :name
      t.string :entrepprise
      t.text :message

      t.timestamps
    end
  end
end
