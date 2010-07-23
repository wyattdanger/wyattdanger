#\ -p 8585
require 'server'
use Rack::Reloader, 1
run GoGoGo.new
puts "Go go go go go go go go go go"
puts "(localhost:8585)"