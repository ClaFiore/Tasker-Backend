require 'date'

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
        title = params[:title]
        content = params[:content]
        start_time = params[:start]
        end_time = params[:end]
        priority = params[:priority]
        project_id = params[:project_id]
        team_member_id = params[:team_member_id]
        status = params[:status]

        task = Task.new(project_id: project_id, title: title, content: content, start: DateTime.strptime(start_time, '%m-%d-%Y %I:%M %p'), end: DateTime.strptime(end_time, '%m-%d-%Y %I:%M %p'),priority: priority, team_member_id: team_member_id, status: status)

        byebug

        if task.valid?
            task.save
            render json: task, except: [:updated_at, :created_at]
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
