class CampaignsController < ApplicationController
  def index
        @campaigns = Campaign.all 
        render json: @campaigns
    end 

    def show
        @campaign = Campaign.find(params[:id])
        render json: @campaign
    end 

    def create
        @campaign = Campaign.create(
            campaign_name: params[:campaign_name],
            camapign_description: params[:camapign_description],
            campaign_location: params[:campaign_location]
        )
        render json: @campaign
    end 

    def update
        @campaign = Campaign.find(params[:id])
        @campaign.update(
            campaign_name: params[:campaign_name],
            camapign_description: params[:camapign_description],
            campaign_location: params[:campaign_location]
        )
        render json: @campaign
    end 

    def destroy
        @campaigns = Campaign.all 
        @campaigns = Campaign.find(params[:id])
        @campaigns.destroy
        render json: @campaigns
    end 
end
