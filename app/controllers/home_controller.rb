class HomeController < ApplicationController
	require 'csv'

	def index

	end

	def csv
  		send_data User.to_csv, filename:"datafile.csv"
    end

    def pdf
    	send_data User.to_pdf.render, filename:"datafile.pdf"
    end
  
    def mail_to
    	UserMailer.create_mail.deliver
    	redirect_to root_path
    end

end
