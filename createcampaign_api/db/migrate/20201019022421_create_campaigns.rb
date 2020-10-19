class CreateCampaigns < ActiveRecord::Migration[6.0]
  def change
    create_table :campaigns do |t|
      t.string :campaign_name
      t.text :camapign_description
      t.string :campaign_location
      t.string :campaign_city
      t.string :campaign_state
      t.string :campaign_zipcode
      t.string :campaign_country
      t.string :campaign_admin
      t.timestamps
    end
  end
end
