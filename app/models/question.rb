class Question < ActiveRecord::Base
  belongs_to :user
  has_many :answers
  has_many :upvotes
  validates :content, presence: true, length: {maximum: 150}



  def upvoted_by user_id
  	Upvote.where(question_id: id, user_id: user_id).length > 0
  end


  def upvote_string user_id
  	if upvoted_by user_id
  		return "Downvote"
  	else
  		return "Upvote"
  	end

  end

end
