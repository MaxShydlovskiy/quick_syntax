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

# String Methods

"Hello John".downcase     #=> "hello john"
"Hello John".upcase       #=> "HELLO JOHN"
"hello john".capitalize   #=> "Hello john"
"Hello John".swapcase     #=> "hELLO jOHN"
"Hello John".reverse      #=> "nhoJ olleH"

hello = "Hello John"
hello.downcase!
puts hello                #=> "hello john"
"Hello John".length       #=> 10
"Hello John".empty?       #=> false
"1000".to_s               #=> "1000" #Cast & Output to String
"1000".to_i               #=> 1000 #Cast & Output to Integer
"1000".to_f               #=> 1000.0 #Cast & Output to Float

# Concatenating Strings

puts "Hello " << "world"  #=> "Hello world"
puts "Hello " + "world"   #=> "Hello world"

text = "world"
puts "Hello #{text}"      #=> "Hello world"

msg = "Hello"

puts msg + "World"        #this doesn't change the variable
puts msg                  #=> Hello

puts msg << "World"       #this changes the variable
puts msg                  #=> World

# Repeating Strings
puts "Hello"*3            #=> "HelloHelloHello"

# Extracting Strings
puts "Hello"[1] #=> "e"
puts "Hello"[-1] #=> "o"
puts "Hello"[0,3] #=> "Hel"

# Utilizing Strings

dvds = <<EOF
100000  |       2:17        |       Skyfall             | 12
100001  |       2:06        |       The Hurt Locker     | 15
100002  |       1:45        |       21 Jump Street      | 15
100003  |       1:40        |       Finding Nemo        | U
EOF

dvds.chomp.split(/\n/).each do |line|
  id, length, name, rating = line.chomp.split(/\s*\|\s*/)
  puts name
end

#=>
# Skyfall
# The Hurt Locker
# 21 Jump Street
# Finding Nemo

dvds = <<EOF
100000  |       2:17        |       Skyfall             | 12
100001  |       2:06        |       The Hurt Locker     | 15
100002  |       1:45        |       21 Jump Street      | 15
100003  |       1:40        |       Finding Nemo        | U
EOF


dvds.chomp.split(/\n/).each do |line|
  id, length, name, rating = line.chomp.split(/\s*\|\s*/)
  if rating.to_i <= 14
    hours, mins = length.split(/:/)
    min_length = hours.to_i*60+ mins.to_i
    if min_length < 125
            puts "\aYAY! We can watch #{name}"
    else
            puts "Cannot watch #{name}, too long"
    end
  else
    puts "Cannot watch #{name}, only suitable for #{rating}"
  end
end
#=>
# Cannot watch Skyfall, too long
# Cannot watch The Hurt Locker, only suitable for 15
# Cannot watch 21 Jump Street, only suitable for 15
# YAY! We can watch Finding Nemo
