class Api::V1::NotificationsController < ApplicationController

    def index
        notifications = Notification.all 
        render json: notifications, except: [:updated_at, :created_at]
    end
end
