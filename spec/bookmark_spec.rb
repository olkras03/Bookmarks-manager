require "bookmarks"

describe Bookmarks do
  describe "#all" do
    it "returns all bookmarks" do
      connection = PG.connect(dbname: "bookmark_manager_test")

      # Add the test data
      connection.exec("INSERT INTO bookmarks (url) VALUES ('http://www.makersacademy.com');")
      connection.exec("INSERT INTO bookmarks (url) VALUES('http://www.destroyallsoftware.com');")
      connection.exec("INSERT INTO bookmarks (url) VALUES('http://www.google.com');")

      bookmarks = Bookmarks.all

      expect(bookmarks).to include ("http://www.google.com")
      expect(bookmarks).to include ("http://www.makersacademy.com")
      expect(bookmarks).to include ("http://www.destroyallsoftware.com")
    end
  end
end
