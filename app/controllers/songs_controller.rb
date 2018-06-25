class SongsController < ApplicationController
  def show_data
    @songlist = Songs.all.limit(3)
  end

  def show_json
    songs = Songs.all.limit(3)
    render json: songs
  end
  
  def show
  end
end
