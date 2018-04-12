module Api::V1
  class PlaylistsController < ApplicationController
    def index
      @playlists = Playlist.order("created_at DESC")
      render json: @playlists
    end

    def create
      @playlist = Playlist.create(playlist_params)
      render json: @playlist
    end

    def update
      @playlist = Playlist.find(params[:id])
      @playlist.update_attributes(playlist_params)
      render json: @playlist
    end

    def destroy
      @playlist = Playlist.find(params[:id])
      if @playlist.destroy
        head :no_content, status: :ok
      else
        render json: @playlist.errors, status: :unprocessable_entity
      end
    end


    private

    def playlist_params
      params.require(:playlist).permit(:title, :body)
    end

  end
end
