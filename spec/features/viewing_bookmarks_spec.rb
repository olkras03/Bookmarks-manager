
feature "Viewing bookmarks" do
  scenario "visiting the index page" do
    visit("/")
    expect(page).to have_content "Bookmark Manager"
  end

  scenario "viewing bookmarks at /bookmarks" do
    visit ("/bookmarks")
    expect(page).to have_content "Bookmarks:"
  end
end
