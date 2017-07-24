class UpvotesController < ApplicationController
	before_action :authenticate_user!

	def toggle_upvote
		@question = Question.find(params[:question_id])
				
		upvote = Upvote.where(user: current_user, question: @question).first
		if upvote
			upvote.destroy!
			@is_upvoted = false	
		else
			Upvote.create(user: current_user, question: @question)
			@is_upvoted = true
			Sendupvote.sample_email(email).deliver_now
		end

		respond_to do |format|
			format.js {}
		end

		end

	
end
