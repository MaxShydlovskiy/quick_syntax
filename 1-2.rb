# Object-Oriented

1.odd?          # => true
1.even?         # => false
'hello'.reverse # => 'olleh'
'hello'.length  # => 5

# Blocks and Iterators

1.upto(5) {|n| puts n } # Prints '12345'
a = [1, 2, 3]           # Create an array literal
a.each do |n|           # Multiline block call
  print n * 2            # Prints '246'
end
a.map {|n| n * 2}       # => [2, 4, 6]

File.open('example.txt') do |f| # Open the file and pass the stream to block
  print f.readline              # Read from the file
end                             # Close the stream when the block ends

# Modules

module Greeter # Define a module called Greeter
  def greet # Define a method called 'greet'
    puts "Hello!"
  end
end
class Person # Define a class called Person
  include Greeter # Include the Greeter module
end
alice = Person.new # Instantiate a new Person
alice.greet # Call the method 'greet' from the instance

# Duck Typing

# If it walks like a duck and talks like a duck, then I treat it like a duck
# define a simple method that accepts any object with a 'each' method
def duck_printer(object)
  if object.respond_to? :each # check if object has a method called 'each'
    object.each {|n| print n } # iterates over the contents and print them
  else # otherwise raise an error
    raise "passed argument doesn't provide #each method."
  end
end

# define some variables with different classes
hash = { a: 1, b: 2, c: 3 }
array = [1, 2, 3]
string = 'hello'

# with an Hash
duck_printer hash   # Prints '[:a, 1][:b, 2][:c, 3]'
# with an Array
duck_printer array  # Prints '123'
# with a String
duck_printer string # Raises a RuntimeError with our error message

# Where to Find Ruby Documentation
# RDoc and ri

# The ri tool is a local documentation viewer that can be invoked from your
# terminal. For example, if you want to find documentation for the Hash class, just type:
# ri Hash
# To exit, type q. You can also get information on a particular method by passing its
# name as a parameter:
# ri Hash.merge
# ri Hash  #each


# Operators

# Expressions
# literals: values such as numbers, strings, arrays, hashes, etc…
# variable and constant references: A variable (or a constant) is
# referenced by citing its name. For example:
x = 1     # assignment expression
x         # variable reference expression
MY_CONST  # constant reference

# Operators

# The precedence of an operator affects the order of evaluation of an expression.
# For example:
1 + 2 * 2 # => 5

# As you can see, the addition operator has a lower precedence than the multiplication
# operator, that’s why the above expression evaluates to 5 and not 6.

(1 + 2) * 2 # => 6

# Arithmetic: + - * / %

1 + 1               # => 2
5 / 2               # => 2
5 % 2               # => 1
"hello" + "world"   # => "hello world"
"hello" * 3         # => "hello hello hello"
2 / 0               # => ZeroDivisionError
2.0 / 0             # => NaN
[1, 2] + [3, 4]     # => [1, 2, 3, 4]
[1, 2] - [1]        # => [2]

# Shift or Append: << >>

10 << 1   # => 20
10 >> 1   # => 5

# On the other hand, the << operator is used by String, Array, IO and many other
# classes as an append operator:

"hello" << "world"                # => "hello world"
"hello" << "appended " << "world" # => "hello appended world"
[] << 1                           # => [1]
[] << 1 << 2                      # => [1, 2]
STDOUT << "hello"                 # prints "hello" to standard output stream

# Comparison: < <= > >= <=>

2 > 1             # => true
"hello" > "a"     #=> true
"hello" > "z"     #=> false
now = Time.now
sleep 5
later = Time.now
now > later       # => false

class Person
  include Comparable
  attr_reader :name

  def initialize(name)
    @name = name
  end

  # define the comparison operator by using the 'name' attribute
  def <=> other
    self.name <=> other.name
  end
end
mario = Person.new 'Mario'
luigi = Person.new 'Luigi'
mario > luigi               # => true

# Booleans: && || ! and or not

x = 5
x > 0 && x < 10         # => true AND true => true
x < 0 || x == 5         # false OR true => true
!(x > 0)                # => !true => false

y = 6
z = false
x && y                  # => 5 AND 6 => 6
z && x                  # => false AND 5 => false
z || x                  # => false OR 5 => 5
result = !z && (x || y) # => true && (5 || 6) => 5

def max(x, y)
  # the righthand expression would be skipped if x is not greater than y
  x > y && return x
  return y
end

x || y && nil           # => x
x or y and nil          # => nil

# Ranges: .. …

1..10                   # from 1 to 10
1...10                  # from 1 to 9
'a'..'Z'                # all characters from 'a' to 'Z'

(1..10).to_a                    # => [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
alphabet = ('a'..'z').to_enum
alphabet.next                   # => 'a'
alphabet.next                   # => 'b'

while line = gets
  puts line if line =~ /start/.. line =~ /end/
end

(1..10) === 5           # => true
(1..10) === 'a'         # => false
('a'..'z') === 'A'      # => false

=begin
Operator                       Assoc            Method             Operation

! ~                            Right             •                 Boolean NOT, bitwise complement

**                             Right             •                 Exponentiation

+ -                            Right             •                 Unary plus and minus

* / %                          Left              •                 Multiplication, division, modulo

+ -                            Left              •                 Plus and minus

<< >>                          Left              •                 Bitwise shift-left and shift-right

&                              Left              •                 Bitwise AND

| ^                            Left              •                 Bitwise OR and XOR

< <= >= >                      Left              •                 Comparison

== === != =~ !~ !~ <=>         •                 •                 Equality and pattern matching

&& and ||                      Left              •                 Boolean AND and OR

.. ...                         •                 •                 Range creation

?:                             Left              •                 Conditional (ternary operator)

rescue                         Right             •                 Exception handling modifier

= **= *= %= += -= <<=          Right             •                 Assignment
>>= &  &= ||= |= ^=

not and or                     Left              •                 Boolean NOT, AND and OR

if unless while until          •                 •                 Expression modifiers

begin/end                      •                 •                 Block expression
=end
