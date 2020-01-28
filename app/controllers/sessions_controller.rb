class Api::V1::SessionsController < ApplicationController
  include CurrentUserConcern
  
# skip_before_action :authenticated, only: [:new, :create]

  def create 
    user = User.find_by(email: params["user"]["email"]).try(:authenticate, params["user"]["password"])

      if user 
        session[:user_id] = user.id
        render json: {
                  status: :created,
                  logged_in: :true,
                  user: user
                }
      else
          render json: { status: 401 }
      end

  end

  def logged_in
    if @current_user
      render json: {
        logged_in: true,
        user: @current_user
      }
    else 
      render json: {
        logged_in: false
      }
    end
  end



  def logout
    reset_session
    render json: {
      status: 200,
      logged_out: true
    }
          
  end



end



# def create 
  #   @user = User.find_by(email: params[:user][:email])
  #   @user = User.where(email: params[:email])
  
  
  #   if password: = @user.password
  #       #render :create, status: :created
  #       render json: @user
  #       # byebug
  #   else
  #       # head(:unauthorized)
  #       # render json: unauthorized
  #       render json: { status: 401 }
  #       # head(:unauthorized)
  #   end
  # end






  
# def index
#   @users = User.all 
#      render json: @users
# end

# def new
# end



# def create 
#   user = User.find_by(email: params["user"]["email"]).try(:authenticate, params["user"]["password"])

#     if user session[:user_id] = user.id
#       render json: {
#         status: :created,
#         logged_in: :true,
#         user: user
#       }
#         # render json: @user.as_json(only: [:id, :email, :password]), status: :created

#     else
#           render json: { status: 401 }
#     end
# end