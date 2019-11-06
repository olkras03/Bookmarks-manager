require "pg"

class Bookmarks
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
end
