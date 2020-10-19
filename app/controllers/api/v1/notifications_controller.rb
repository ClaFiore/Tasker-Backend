class Api::V1::NotificationsController < ApplicationController

    def index
        notifications = Notification.all.sort { |a,b| b.created_at <=> a.created_at } 
        render json: notifications, except: [:updated_at], include: [:task => {except: [:created_at, :updated_at]}, :team_member => {except: [:created_at, :updated_at]}, :team_leader => {except: [:created_at, :updated_at]}], methods: :time
    end
end
