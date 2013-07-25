#!/usr/bin/ruby -Kw

require "cgi"

print "Content-type: text/html\n\n"

imgs = Dir.glob("img/*.png")
print imgs.join(",")