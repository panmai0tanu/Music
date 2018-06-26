require 'rails_helper'

describe 'Song' , js: true do
  it 'check home has data 3 row' do
    visit '/song/html'
    within('table') do
      expect(page).to have_xpath("/html/body/center/table/tbody/tr", count: 3)
    end
  end
  
  it 'check song name, band name, album' do
    visit 'song/html'
    within('table') do
      #check data on colum 
      expect(page).to have_xpath("tbody/tr[1]", text:"#{@songIndex0}" )
      expect(page).to have_xpath("tbody/tr[2]", text:"#{@songIndex1}" )
      expect(page).to have_xpath("tbody/tr[3]", text:"#{@songIndex2}" )
    end
  end
end