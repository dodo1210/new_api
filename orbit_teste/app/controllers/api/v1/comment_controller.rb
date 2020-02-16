class Api::V1::CommentController < ApplicationController	
	def index
  		self.create
  	end

	def new
	  @comment = Comment.new
	end
	 
	def create
	  @comment = Comment.new(comment_params)
	 
	  if @comment.save
	    render json: Comment.all
	  else
	    render json: 'new'
	  end
	end
	 
	private
	  def comment_params
	    params.require(:comment).permit(:text, :user_id, :event_id)
	  end
end
