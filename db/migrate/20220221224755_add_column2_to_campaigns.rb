class AddColumn2ToCampaigns < ActiveRecord::Migration[6.1]
  def change
    add_column :campaigns, :sentence2, :string
  end
end
