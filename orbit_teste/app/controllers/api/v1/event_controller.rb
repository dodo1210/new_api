class Api::V1::EventController < ApplicationController
	def index
  		self.show
  	end

	def show
		render json: Event.all
	end
end
