class Sendupvote < ApplicationMailer
	def sample_email(email)

		@email=email
		mail(to: email, subject: 'Sample Email')



end


def upvote
end

end