class Api::V1::ReportController < ApplicationController
	def index
		comments_report = []
  		Comment.all.each do |comment|
  			Report.all.each do |report|
  				if comment[id] == report[id]
	  				comment.append(comment)
	  			end
	  		end
  		end
  		render json: comments_report
  	end
end
