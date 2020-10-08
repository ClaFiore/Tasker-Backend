class Api::V1::EmployeesController < ApplicationController
    skip_before_action :logged_in?, only: [:index]

    def index
        employees = Employee.all 
        render json: employees, except: [:updated_at, :created_at], include: [:managed_team => {except: [:created_at, :updated_at]}, :team => {except: [:created_at, :updated_at]}]
    end

    def show
        # @employee = Employee.find_by(id: params[:id])
        render json: @employee, except: [:updated_at, :created_at], include: [:managed_team => {except: [:created_at, :updated_at]}, :team => {except: [:created_at, :updated_at]}]
    end
end
