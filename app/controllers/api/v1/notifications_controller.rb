class Api::V1::NotificationsController < ApplicationController

    def index
        notifications = Notification.all 
        render json: notifications, except: [:updated_at, :created_at], include: [:task => {except: [:created_at, :updated_at]}, :team_member => {except: [:created_at, :updated_at]}, :team_leader => {except: [:created_at, :updated_at]}]
    end
end
