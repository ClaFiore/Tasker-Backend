class ApplicationController < ActionController::API
    # before_action :logged_in?

    def encode_token(payload)
        JWT.encode(payload, 'Tasker', 'HS256')
    end

    # def logged_in?
        
    #     headers = request.headers['Authorization']
    #     token = headers.split(' ')[1]
    #     byebug
    #     begin
    #         employee_id = JWT.decode(token, 'Tasker')[0]['employee_id']
    #         @employee = Employee.find(employee_id)
            
    #     rescue
    #         @employee = nil
    #     end
    #     render json: {error: 'Application controller says: You are not logged in'} unless @employee
    # end
end

