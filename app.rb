require "sinatra/base"
require "./lib/bookmarks"

class BookmarkManager < Sinatra::Base
  get "/" do
    "Bookmark Manager"
  end

  get "/bookmarks" do
    @bookmarks = []
    Bookmarks.all.each do |bookmark|
      @bookmarks << Bookmarks.convert_to_bookmark(bookmark)
    end
    erb(:bookmarks)
  end

  run! if app_file == $0
end
