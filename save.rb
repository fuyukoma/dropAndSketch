#!/usr/bin/ruby -Kw

require "cgi"
require 'base64'

print "Content-type: text/html\n\n"

input = CGI.new
imagedata = input["img"]
filename = input["filename"]

fh_img = open("img/" + filename + ".png", "wb")
fh_img.write Base64.decode64(imagedata.split().join())
fh_img.close

imgs = Dir.glob("img/*.png")
if imgs.length > 10 then
	File.unlink(imgs[0])
end

print "img/" + filename + ".png"
