class UserMailer < ApplicationMailer
	def create_mail
		mail(to: "sourabhkeshri93@gmail.com", subject: "Sending user data through mail")
	end
end
