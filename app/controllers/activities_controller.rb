class ActivitiesController < ApplicationController

    def create
        
        activity = Activity.new(activityParams)

        if activity.save
            render json: activity
        else
            render json: 'You already have this venue saved.'
        end

    end

    def index

        activities = Activity.all
        render json: activities

    end

    def show

        activity = Activity.find(params[:id])
        render json: activity, status: :ok

    end

    def destroy

        activity = Activity.find(params[:id])
        activity.destroy
        
    end

    private

    def activityParams
        params.require(:activity).permit(:user_id, :venue_name, :venue_api_id, :lat, :lng, :address)
    end

end