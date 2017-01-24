feature "adding links to database" do
  scenario "user tries to add a link" do
    visit "./links/new"
    fill_in "url", with: "thing.com"
    fill_in "title", with: "thingie"
    click_button "add link"

    expect(current_path).to eq '/links'

    within 'ul#links' do
      expect(page).to have_content('thingie')

    end
  end
end
