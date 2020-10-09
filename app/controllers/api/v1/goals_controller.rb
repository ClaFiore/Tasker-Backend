class Api::V1::GoalsController < ApplicationController

    def index
        goals = Goal.all 
        render json: goals, except: [:updated_at, :created_at]
    end

    def show
        goal = Goal.find_by(id: params[:id])
        render json: goal, except: [:updated_at, :created_at]
    end

    def create
        goal = Goal.new(goal_params)
        if goal.valid?
            goal.save
            render json: goal #or render json: {message: 'Goal was successfully created'}
        else
            render json: {error: goal.errors.full_messages.join('; ')}
        end
    end

    def update
        goal = Goal.find_by(id: params[:id])
        goal.update(goal_params)
        render json: goal, except: [:updated_at, :created_at]
    end

    def destroy
        goal = Goal.find_by(id: params[:id])
        goal.destroy
        render json: {message: "Goal has been deleted"}
    end

private

    def goal_params
        params.permit(:title, :content, :due_by, :status, :project_id)
    end

end
