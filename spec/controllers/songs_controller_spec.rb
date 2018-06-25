require 'rails_helper'

describe "songs controller spec", :type => :request do
  it 'check @songs variable has length = 3' do
    get '/song/json'
    expect(assigns[:songlist].length).to eq(3)
  end
  it 'check @songs variable instance of class Song' do
    get '/song/html'
    expect(assigns[:songlist].instance_of?(Songs.all.class))
  end
end