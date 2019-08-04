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
end

