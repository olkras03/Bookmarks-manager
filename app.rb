require "sinatra/base"
require "./lib/bookmarks"

class BookmarkManager < Sinatra::Base
  get "/" do
    "Bookmark Manager"
  end

  get "/bookmarks" do
    p ENV
    @bookmark = Bookmarks.all

    erb(:bookmarks)
  end

  run! if app_file == $0
end
