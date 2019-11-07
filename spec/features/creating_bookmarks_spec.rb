feature "Adding a new bookmark" do
  scenario "A user should be able to add a new bookmark to Bookmark Manager" do
    visit ("/bookmarks/new")
    fill_in("url", with: "www.yahoo.com")
    click_button("Submit")
    expect(page).to have_content "www.yahoo.com"
  end
end
