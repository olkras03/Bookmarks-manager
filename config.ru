#require_relative "./app"
#require File.join(File.dirname(__FILE__), "..", "app.rb")

require File.expand_path("app", File.dirname(__FILE__))
run BookmarkManager
