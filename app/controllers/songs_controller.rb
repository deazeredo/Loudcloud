class SongsController < ApplicationController
		before_action :lookup_task, except: [:index]
	
	def index
		@songs = Song.all
	end
	
	private

	def lookup_task
    	@song = Song.find(params[:song_id])
  	end
end
