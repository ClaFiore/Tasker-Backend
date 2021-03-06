class Api::V1::AuthController < ApplicationController

    # skip_before_action :logged_in?, only: [:create]
    
    def create
        employee = Employee.find_by(email: params[:email])
        if employee && employee.authenticate(params[:password])
            render json: {employee: employee, team: employee.team, managed_team: employee.managed_team, token: encode_token({employee_id: employee.id})}, status: 200
        else
            render json: {error: 'Auth Controller says: Invalid Credentials'}
        end
        
    end

end

