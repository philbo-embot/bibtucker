# require 'httparty'

class JustVisual
	API_URL = 'http://fashion.vsapi01.com/api-search/by-url?url=https://i.s-jcrew.com/is/image/jcrew/C5097_WU1492_m?$ary_tn250$&apikey=<%= ENV["JUSTVISUAL_KEY"] %>'

	def unique_url
		response = HTTParty.get(API_URL)
		json = JSON.parse(response.body)
		json['url']

		
	end

end
