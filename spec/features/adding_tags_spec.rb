feature "user can assign a tag to a bookmark" do
  scenario "user creates a new link with a tag" do
    visit "./links/new"
    fill_in "url", with: "thing.com"
    fill_in "title", with: "thingie"
    fill_in "tags", with: "Best thing."
    click_button "add link"

    within 'ul#links' do
      expect(page).to have_content('Best thing')
    end

  end
end
