require 'rails_helper'

describe 'Song' , js: true do
  it 'check home has data 3 row' do
    visit '/song/html'
    within('table') do
      expect(page).to have_xpath("/html/body/center/table/tbody/tr", :count => 3)
    end
  end
  
  it 'check song name, band name, album' do
    visit 'song/html'
    within('table') do
      expect(page).to have_xpath("thead/tr/th[1]", :text => "Name")
      expect(page).to have_xpath("thead/tr/th[2]", :text => "Band")
      expect(page).to have_xpath("thead/tr/th[3]", :text => "Album")
    end
  end

end