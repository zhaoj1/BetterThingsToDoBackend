class UsersController < ApplicationController

    wrap_parameters :user, include: %i[username password]

    def create
        user = User.new(userParams)
        if user.save
            token = encode_token(user.id)
            render json: {user: user, token: token}
        else
            render json: {errors: user.errors.full_messages}
        end
        
    end

    private

    def userParams
        params.require(:user).permit(:username, :password)
    end

end
