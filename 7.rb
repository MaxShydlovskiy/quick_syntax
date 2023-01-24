# Chapter 7
# Booleans

true.class                    # => TrueClass
false.class                   # => FalseClass

# Creating Boolean Values
test = true                   # => true
puts test                     # true  => nil
test.class                    # => TrueClass

age = 24                      # => 24
age >=20                      # => true
age = 24                      # => 24
name = "Joe"                  # => "Joe"
age >=20 && name == "Paul"    # => false
age >=20 || name == "Paul"    # => true
# Ruby also negates expressions by using the ! operator (meaning not):
age = 24                      # => 24
! ( age >=20 )                # => false
! ( age < 20 )                # => true

age = 24
name = "Joe"
  if ( age > 20 )
    if( name == "Paul" )
      puts "Hello Paul"
    elsif( name == "Joe" )
      puts "Hello Joe"
    else
      puts "Hello somebody?"
    end
  else
    puts "Sorry, you’re not old enough to enter"
end
#=> Hello Joe

age = 24                      # => 24
( age > 20 ? "Yes" : "No" )   # => "Yes"

!!0                           # => true
!!1                           # => true
!!nil                         # => false
!!false                       # => false
!!true                        # => true

age = 24                      # => 24
!!age == age                  # => false
test = true                   # => true
!!test == test                # => true
test_false = false            # => false
!!test_false == test_false    # => true

# Comparative Operators
10 == 10                      # Equals                     => true

10 != 10                      # Not Equals                 => false

10 <= 10                      # Less than or equals        => true

10 >=10                       # Greater than or equals     => true

10 < 10                       # Less than                  => false

10 > 10                       # Greater than               => false

destroy_forcefully = false

if ( destroy_forcefully )
  puts "Destroying now!"
else
  puts "Are you sure?"
end
# => Are you sure?

puts !!destroy_forcefully.class

if ( destroy_forcefully )
        puts "Destroying now!"
else
        puts "Are you sure?"
end
# =>
# true
# Destroying now!
