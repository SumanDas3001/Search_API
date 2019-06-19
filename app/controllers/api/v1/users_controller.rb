module Api
	module V1
		class UsersController < ApplicationController
			def index
			end

			def create
				user = User.find_by_email(params[:email]) if params[:email].present?
				if user&.valid_password?(params[:password])
					render json: user.as_json(only: [:id, :email, :authentication_token]), status: :created
				else
					# head(:unauthorized)
					render json: {status: 'ERROR', message:'User is not authorized'},status: :unauthorized
				end
			end
		end
	end
end