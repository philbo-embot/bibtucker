class EtsysController < ApplicationController

	def index
		api_request = "https://openapi.etsy.com/v2/listings/active?api_key=" +  Rails.application.secrets.etsy_api_key
	# @result = JSON.parse(HTTParty.get(api_request).body[])

	 @results =  JSON.parse(HTTParty.get(api_request).body)['results']

	@first = @results[0]


	puts '++++++++++++++++++++++++++'
	puts '+++++++++++ results[0] +++++++++++++++'
		p @results[0]
	puts '++++++++++++++++++++++++++'
	puts '++++++++++++++++++++++++++'
	puts '++++++++++++++++++++++++++'
	puts '+++++++++++ first[:title] +++++++++++++++'
		p @first["title"]
	puts '++++++++++++++++++++++++++'
	puts '++++++++++++++++++++++++++'


	end


end

