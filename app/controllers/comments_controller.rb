class CommentsController < ApplicationController
	def create
		@comment=current_user.comments.new(comment_params)
		

		if @comment.save
			flash[:success]='Post success'
			redirect_to request.referrer || root_url
		else
			flash[:danger]='Post not success'
			redirect_to request.referrer || root_url
		end

	end

	private
		def comment_params
			params.require(:comment).permit(:comment, :micropost_id)
			
		end
end
