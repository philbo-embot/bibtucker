class Advice < ActiveRecord::Base
	include HTTParty

	# base_uri 'http://api.adviceslip.com/advice'
	 format :json

end

# puts Advice.get('http://api.adviceslip.com/advice')