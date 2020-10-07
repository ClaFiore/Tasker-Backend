class ApplicationController < ActionController::API
    before_action :logged_in?

    def encode_token(payload)
        JWT.encode(payload, 'Tasker', 'HS256')
    end

    def logged_in?
        headers = request.headers["Authorization"]
        token = headers.split(' ')[1]

        begin
            employee_id = JWT.decode(token, 'Tasker')[0]['employee_id']
            @uemployee = Employee.find(employee_id)
        rescue
            @employee = nil
        end
        render json: {error: 'You are now logged in'} unless @employee
    end
end
