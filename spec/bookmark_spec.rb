require "bookmarks"

describe Bookmarks do
  describe "#all" do
    it "returns all bookmarks" do
      bookmarks = []

      Bookmarks.all.each do |bookmark|
        bookmarks << Bookmarks.convert_to_bookmark(bookmark)
      end
      expect(bookmarks[0].url).to include ("http://www.google.com")
      expect(bookmarks[1].url).to include ("http://www.makersacademy.com")
      expect(bookmarks[2].url).to include ("http://www.destroyallsoftware.com")
    end
  end
end
