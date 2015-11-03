feature 'Displaying Links' do
  scenario 'Display all the links on the Links page' do
    Link.create(title: 'Google', url: 'https://google.co.uk')
    visit '/links'
    expect(page.status_code).to eq 200
    expect(page).to have_content 'Google'
  end
end

