class Api::V1::RegistrationsController < ApplicationController

    def create 
        user = User.create!(
            email: params['user']['email'],
            password: params['user']['password'],
            password_confirmation: params['user']['password_confirmation'],
            firstname: params['user']['firstname'],
            lastname: params['user']['lastname'] 
        )
      
          if user 
            session[:user_id] = user.id
            render json: {
              status: :created,
              user: user
            }
              # render json: @user.as_json(only: [:id, :email, :password]), status: :created
      
          else
            render json: { status: 500 }
          end
      end
end
