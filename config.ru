require 'rack'
require 'pry'

class App
  def call(env)
    path = env["PATH_INFO"]
    if path == '/'
      [200, {"Content-Type" => "text/html"}, ["<h2> Hello <em> World </em>! </h2>"]]
    elsif path == '/muthomi'
      [200, {"Content-Type" => "text/html"}, ["<h2> My name is tITUS mUTHOMI </h2>"]]
    else
      [400, {"Content-Type" => "text/html"}, ["<h2> Page not found </h2>"]]
    end

  end
end

run App.new