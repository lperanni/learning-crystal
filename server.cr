require "http/server"


server = HTTP::Server.new do |context|

  context.response.content_type = "text/html"
  context.response.print "<h1>Hello World</h1>"
  puts "-- Server response = #{context.response.status_code} --"

end

address = server.bind_tcp 3000
puts "Listening on #{address}"
server.listen