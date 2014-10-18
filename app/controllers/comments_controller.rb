class CommentsController < ApplicationController

	def new
	end

	
	def create
		@comment = Comment.new(comment_params)

		#
		if @comment.save
			respond_to do |format|
				format.html 
				format.js	
			end	
			
		end
			
	end
		
	
	def index
		@comments = Comment.all
	end	



	private
		def comment_params
			params.require(:comment).permit(:name, :message, :subject)
		end

		def set_comment
			@comment = Comment.find(params[:id])
		end	
end
