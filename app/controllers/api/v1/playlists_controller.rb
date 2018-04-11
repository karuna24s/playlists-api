module Api::V1
  class PlaylistsController < ApplicationController
    def index
      @playlists = Playlist.all
      render json: @playlists
    end
  end
end
