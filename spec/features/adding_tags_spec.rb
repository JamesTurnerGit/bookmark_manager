feature "user can assign a tag to a bookmark" do
  scenario "user creates a new link with a tag" do
    new_link
    within 'ul#links' do
      expect(page).to have_content('Best thing')
    end
  end
end
