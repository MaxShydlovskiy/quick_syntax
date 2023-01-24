# Chapter 3

# STRINGS

# String Literals

puts "Hello World"
# Hello World

puts 'Hello World'
# Hello World

# puts 'Welcome to John's website'
# syntax error, unexpected local variable or method, expecting end-of-input (SyntaxError)
# puts 'Welcome to John's website'

puts 'Welcome to John\'s website'
# Welcome to John's website

=begin
\' = Escaping a single quote using a backslash

\\ = Escaping a backslash with another backslash

\" = Escaping a double quote using a backslash

\\ = Escaping a backslash with another backslash

\a = Bell/Alert

\b = Backspace

\r = Carriage Return

\n = New Line

\s = Space

\t = Tab
=end

puts "Welcome to John's Website\nWhich page would you like to visit"
page = gets.chomp
puts "Welcome to John's #{page}!" #=> "Welcome to John's Blog!"
puts "2 + 2 = #{2+2}"             #=> 2 + 2 = 4
puts "Seconds/day: #{24*60*60}"   #=> Seconds/day: 86400

# puts text = <<END
# Lorem ipsum dolor sit amet, consectetur adipiscing elit
# Donec at neque sapien. Donec eu libero quis erat
# volutpat venenatis. Vivamus suscipit elit eu odio facilisis
# END
#=> Lorem ipsum dolor sit amet, consectetur adipiscing elit
# Donec at neque sapien. Donec eu libero quis erat
# volutpat venenatis. Vivamus suscipit elit eu odio facilisis
%q{Hello World, Welcome to John's Website!}  # => "Hello World, Welcome to John's Website"
%q/Hello World, Welcome to John's Website/   # => "Hello World, Welcome to John's Website"
%q*Hello World, Welcome to John's Website*   # => "Hello World, Welcome to John's Website"

print "Hello", "World", "Welcome", "to", "my", "Website"
# HelloWorldWelcometomyWebsite => nil

puts "Hello", "World", "Welcome", "to", "my", "Website"
# Hello
# World
# Welcome
# to
# my
# Website
#  => nil
