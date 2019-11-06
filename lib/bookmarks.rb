require "pg"

class Bookmarks
  attr_reader :url, :id

  def initialize(url, id)
    @url = url
    @id = id
  end

  def self.all
    temp = []
    @connection = PG.connect(dbname: "bookmark_manager")

    @connection.exec("SELECT * FROM bookmarks") do |result|
      result.each do |row|
        temp << row
      end
    end

    return temp
  end

  def self.convert_to_bookmark(data)
    url = data["url"]
    id = data["id"]

    return Bookmarks.new(url, id)
  end
end
