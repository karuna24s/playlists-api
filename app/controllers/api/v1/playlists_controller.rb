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

    private

    def playlist_params
      params.require(:playlist).permit(:title, :body)
    end

  end
end
