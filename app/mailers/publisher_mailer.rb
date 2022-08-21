#publisher mailer 
class PublisherMailer < ApplicationMailer
	default from: 'notifications@example.com'

	def welcome_email
		@publisher = params[:publisher]
		@url = 'http://example.com/login'
		mail(to: @publisher.email, subject: 'Welcome To My Site.')
	end	
		
end
