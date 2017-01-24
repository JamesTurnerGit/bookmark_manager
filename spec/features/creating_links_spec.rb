feature "adding links to database" do
  scenario "user tries to add a link" do
    visit "./links/new"
    fill_in "url", with: "thing.com"
    fill_in "title", with: "thingie"
    click_button "add link"
    expect(page).to have_content "thingie"
  end
end
