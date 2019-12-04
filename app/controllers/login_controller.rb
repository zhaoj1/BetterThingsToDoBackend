# class LoginController < ApplicationController

#     def login
#         user = User.find_by(username: params[:username])

#         if user
#             token = encode_token(user.id)
#             render json: {user: user, token: token}
#         else
#             render json: {errors: "Username or password incorrect."}
#         end
#     end

#     def auto_login   
#         if session_user
#             render json: {user: session_user}
#         else
#             render json: {errors: "User not found. Please login again. "}
#         end
#     end

# end
