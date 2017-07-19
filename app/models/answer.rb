class Answer < ActiveRecord::Base
  belongs_to :question
  
  belongs_to :user

  validates :content, presence: true, length: {maximum:200}
end
