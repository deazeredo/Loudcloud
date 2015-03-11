class CommentsController < ApplicationController

	def new
		@song = Song.find(params[:song_id])
		@comment = @song.comment.build
	end

	def create
		@song = Song.find(params[:song_id])
		@comment = @song.comment.find(params[:id])
	end

	def edit
		@song = Song.find(params[:song_id])
		@comment = @song.comment.find(params[:id])
	end

	def update
		@song = Song.find(params[:song_id])
		@comment = @song.comment.find(params[:id])
		@comment.update_attributes(allowed_params)

	end

	def destroy
		@song = Song.find(params[:song_id])
		@comment = @song.comment.find(params[:id])
		@comment.destroy
	end

	private
	def allowed_params 
		params.require(:drink).permit(:body)		
	end
end
