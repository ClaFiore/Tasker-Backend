class Api::V1::EmployeesController < ApplicationController
    # skip_before_action :logged_in?, only: [:index, :show]

    def index
        employees = Employee.all 
        render json: employees, except: [:updated_at, :created_at], include: [:managed_team => {except: [:created_at, :updated_at]}, :team => {except: [:created_at, :updated_at]}]
    end

    def show
        @employee = Employee.find_by(id: params[:id])
        render json: @employee, except: [:updated_at, :created_at], include: [:managed_team => {except: [:created_at, :updated_at]}, :team => {except: [:created_at, :updated_at]}]
    end

    def update
        id = params[:id]
        @employee = Employee.find(id)
        @employee.update(employee_params)
        
        if @employee.valid?
            @employee.save
            render json: {employee: @employee, team: @employee.team, managed_team: @employee.managed_team}
        else
            render json: {error: @employee.errors.full_messages}, status: :not_acceptable
        end
    end

private

    def employee_params
        params.permit(:id, :team_id, :password, :first_name, :last_name, :email, :address, :title, :department, :photo, :dob, :phone, :managed_team_id)
    end

end
