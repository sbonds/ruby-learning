# Get my number game
# From Head First Ruby
# Practice by Steve Bonds
# Jan 21 2019

# https://stackoverflow.com/questions/49074871/rubys-output-in-the-windows-console-vs-mingw64-vs-cygwin64
STDOUT.sync = true

puts "Welcome to 'Get My Number!'"
print "What is your name? "

input = gets

puts "Welcome, #{input}!"

p input