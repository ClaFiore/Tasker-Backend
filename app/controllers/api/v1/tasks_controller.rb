class Api::V1::TasksController < ApplicationController

    def index
        tasks = Task.all 
        render json: tasks, except: [:updated_at, :created_at]
    end

    def show
        task = Task.find_by(id: params[:id])
        render json: task, except: [:updated_at, :created_at]
    end

    def create
        task = Task.new(task_params)
        if task.valid?
            task.save
            render json: task #or render json: {message: 'Task was successfully created'}
        else
            render json: {error: task.errors.full_messages.join('; ')}
        end
    end

    def update
        task = Task.find_by(id: params[:id])
        task.update(task_params)
        render json: task, except: [:updated_at, :created_at]
    end

    def destroy
        task = Task.find_by(id: params[:id])
        task.destroy
        render json: {message: "Task has been deleted"}
    end

private

    def task_params
        params.permit(:title, :content, :start, :end, :project_id, :team_member_id, :priority, :status, :repeat)
    end
end
