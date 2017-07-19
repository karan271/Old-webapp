class HomeController < ApplicationController
	before_action :authenticate_user!

  def index
  	@question = Question.new
  	@answer = Answer.all
  end
end
