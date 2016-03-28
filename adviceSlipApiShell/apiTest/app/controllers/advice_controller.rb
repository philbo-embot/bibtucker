class AdviceController < ApplicationController

	def index
		 @response =  JSON.parse(HTTParty.get("http://api.adviceslip.com/advice").body)["slip"]["advice"]
		 p @response
	end

end
