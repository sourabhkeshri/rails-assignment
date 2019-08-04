class HomeController < ApplicationController
	require 'csv'

	def index

	end

	def csv
  		send_data User.to_csv, filename:"datafile.csv"
    end

end
