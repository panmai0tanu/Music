class SongsController < ApplicationController
  def show_data
    @songlist = Songs.all.limit(3)

    i = 0
    songarr = []
    @songlist.each do |song|
    	songarr[i] = song
    	i += 1
    end
    @songIndex0 = songarr[0]
    @songIndex1 = songarr[1]
    @songIndex2 = songarr[2]
  
  end

  def show_json
    songs = Songs.all.limit(3)
    render json: songs
  end
  
  def show
  end
end
