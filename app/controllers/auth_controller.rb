class AuthController < ApplicationController

    def login
        
        user = User.find_by(username: params[:username])

        if user && user.authenticate(params[:password])
            token = encode_token(user.id)
            render json: {user:user, token:token}
        else
            render json: {errors: "Username or password incorrect."}
        end

    end

end
