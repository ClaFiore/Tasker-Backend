class Api::V1::EmployeesController < ApplicationController
    def index
        employees = Employee.all 
        render json: employees, except: [:updated_at, :created_at], inculde: [:team => {except: [:created_at, :updated_at]}]
        # render json: users, except: [:updated_at, :created_at], include: [:reservations => {except: [:created_at, :updated_at]}]
    end

    def show
        render json: @employee
    end
end
