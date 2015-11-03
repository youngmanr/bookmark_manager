feature 'add new links' do
  scenario 'add link' do
    visit '/links/new'
    fill_in :title, with: 'Google'
    fill_in :url, with: 'www.google.co.uk'
    click_button 'Add'
    save_and_open_page
    expect(page).to have_content "Google"
  end
end