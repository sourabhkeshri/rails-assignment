class User < ApplicationRecord
	 def self.to_csv
        @users= User.all.order("user_name").limit(50)
		CSV.generate do |csv|
			csv<< column_names
			@users.each do |user|
				csv<<user.attributes.values_at(*column_names)
			end
		end
	end

	def self.to_pdf
		@users=User.all.order("user_name").limit(50)
	    Prawn::Document.new do |pdf|
	    	pdf.text "User data are as follow"
	    	@users.each do |user|
	    	    pdf.text "Username: #{user.user_name}  Email: #{user.user_email}  Phone: #{user.phone_number}"
	    	 
	    	end
	    end	   

	end

end

