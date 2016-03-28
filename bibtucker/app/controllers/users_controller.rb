require 'just_visual'


class UsersController < ApplicationController


	def index
		@users = User.all
	end

	def show 
		@user = User.find(params[:id])
	end
	
	def create
		api = JustVisual.new()
		url =api.unique_url

		p api
		
	end
end
