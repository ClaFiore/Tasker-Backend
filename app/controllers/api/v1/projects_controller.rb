class Api::V1::ProjectsController < ApplicationController
    # skip_before_action :logged_in?, only: [:index]
    def index
        projects = Project.all.sort { |a,b| a.due_by <=> b.due_by }
        render json: projects, except: [:updated_at, :created_at]
    end

    def show
        project = Project.find_by(id: params[:id])
        render json: project, except: [:updated_at, :created_at]
    end

    def create
        project = Project.new(project_params)
        if project.valid?
            project.save
            render json: project #or render json: {message: 'Project was successfully created'}
        else
            render json: {error: project.errors.full_messages.join('; ')}
        end
    end

    def update
        project = Project.find_by(id: params[:id])
        project.update(project_params)
        render json: project, except: [:updated_at, :created_at]
    end

    def destroy
        project = Project.find_by(id: params[:id])
        project.destroy
        render json: {message: "Project has been deleted"}
    end

private

    def project_params
        params.permit(:title, :content, :team_id, :due_by, :status)
    end

end
