feature 'add new links' do
  scenario 'add link' do
    visit '/links/new'
    fill_in :title, with: 'Yahoo'
    fill_in :url, with: 'www.yahoo.co.uk'
    click_button 'Add'
    expect(page).to have_content "Yahoo"
  end
end
