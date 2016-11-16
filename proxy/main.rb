require_relative 'proxyimage'

image = ProxyImage.new("test_10mb.jpg")
# image will be loaded from disk
image.display()

puts ""
#image will not be loaded from disk
image.display()
