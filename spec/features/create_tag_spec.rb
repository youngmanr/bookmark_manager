require_relative '../../app/models/link'

feature 'add new links' do
  scenario 'add link' do
    visit '/links/new'
    fill_in :title, with: 'Yahoo'
    fill_in :url, with: 'www.yahoo.co.uk'
    fill_in :tag, with: 'search'
    click_button 'Add'
    link = Link.first
    expect(link.tags.map(&:name)).to include('search')
  end
end