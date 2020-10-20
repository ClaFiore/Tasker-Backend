class Api::V1::NotificationsController < ApplicationController

    def index
        notifications = Notification.all.sort { |a,b| b.created_at <=> a.created_at } 
        render json: notifications, except: [:updated_at], include: [:task => {except: [:created_at, :updated_at]}, :team_member => {except: [:created_at, :updated_at]}, :team_leader => {except: [:created_at, :updated_at]}], methods: :time
    end


    def update
        id = params[:id]
        notification = Notification.find(id)
        notification.update(notification_params)
        
        if notification.valid?
            notification.save
            render json: notification, except: [:updated_at], include: [:task => {except: [:created_at, :updated_at]}, :team_member => {except: [:created_at, :updated_at]}, :team_leader => {except: [:created_at, :updated_at]}], methods: :time
        else
            render json: {error: notification.errors.full_messages}, status: :not_acceptable
        end
    end

private

    def notification_params
        params.permit(:id, :team_member_id, :team_leader_id, :task_id, :message, :read)
    end


end
