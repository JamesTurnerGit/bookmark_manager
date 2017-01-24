def new_link hash= {}
  visit "./links/new"
  fill_in "url", with:   (hash[:url]  || "thing.com")
  fill_in "title", with: (hash[:title]|| "thingie")
  fill_in "tags", with:  (hash[:tags] || "Best thing.")
  click_button "add link"
end
