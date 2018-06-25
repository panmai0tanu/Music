require 'rails_helper'

describe "songs controller spec", :type => :request do
  it 'check 3 songs from controller' do
    get '/song/html'
    expect(assigns[:songlist].length).to eq(3)
  end
  it 'check @songs variable' do
    get '/song/html'
    expect(assigns[:songlist].instance_of?(Songs.all.class))
  end
end