class Api::V1::UserController < ApplicationController
	def index
  		self.show
  	end

	def show
		render json: User.all
	end
end
