class ApplicationController < ActionController::API

	before_action :authenticate_user_with_token

	def authenticate_user_with_token
		if params[:email].present? and params[:authentication_token].present?
			if User.find_by_email(params[:email]).present? && User.by_authentication_token(params[:authentication_token]).present?
				return true
			end
		else
			return false
		end
	end
end
