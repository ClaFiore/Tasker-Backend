class Api::V1::EmployeesController < ApplicationController
    skip_before_action :logged_in?, only: [:index]
    def index
        employees = Employee.all 
        render json: employees, except: [:updated_at, :created_at], inculde: [:team => {except: [:created_at, :updated_at]}]
    end

    def show
        render json: @employee, except: [:updated_at, :created_at], inculde: [:team => {except: [:created_at, :updated_at]}]
    end
end
