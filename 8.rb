# Chapter 8
# Objects

self.class        # => Object

class Car
  def startEngine
    puts "Engine Started"
  end
end
my_car = Car.new
my_car.startEngine
# =>
#  Engine Started

# Constants
# ARGV
# DATA
# ENV
# RUBY_*
=begin
STDERR
Ruby’s Standard Error Output, this is normally mapped to the running console, however
can be remapped to a log file to keep track of errors (rather than standard output)
separately
STDIN
The Standard Input, including the input passed in to a script and any input received
during the running of the application.
STDOUT
The Standard Output, which is used by default to output any data to the console during
the running of an application (such as the output from a puts statement).
TOPLEVEL_BINDING
This is the global instance of Binding that is mapped to the object for the main method
when running Ruby.
TRUE/FALSE/NIL
The TRUE, FALSE, and NIL constants are aliases for true, false, and nil used previously
within Chapter 7.
=end

#!/usr/bin/env ruby
object = "ABC"
new_object = object.dup #Duplicate the object
puts object == new_object
puts object.equal? new_object
puts object.equal? object
# =>
# true
# false
# true

#!/usr/bin/env ruby
puts 1 == 1.0
puts 1.eql? 1.0
puts 1.eql? 1
# =>
# true
# false
# true

nil.nil?        # => true
false.nil?      # => false
0.nil?          # => false

# Duplication of Objects
# Within Ruby we can also manipulate objects to clone or duplicate an object.
#!/usr/bin/env ruby
class Car
  colour = ""
  def startEngine
    puts "Engine Started"
  end

  def setColour color
    self.colour = colour
  end
end

my_car = Car.new
puts my_car.class

new_car = my_car.clone
puts new_car.class
#=>
# Car
# Car

#!/usr/bin/env ruby
class Car
  def startEngine
    puts "Engine Started"
  end
end
my_car = Car.new
puts my_car.class

new_car = my_car.dup
puts new_car.class
#=>
# Car
# Car


# Freezing of Objects

#!/usr/bin/env ruby

results = [ 98, 76, 28 ]

results.freeze

puts results.frozen?
results.pop(10)
#=>
# true
# fig11.rb:8:in 'pop': can't modify frozen Array (RuntimeError)
#  from fig11.rb:8:in '<main>'

# Object Metadata

#!/usr/bin/env ruby
class Car
  def startEngine
    puts "Engine Started"
  end
end
my_car = Car.new
puts my_car.class #=> Car
puts my_car.instance_of? Car #=> true
puts my_car.is_a? Car #=> true
# We can determine the available methods within a class. The methods method shows
# all public or protected methods:
#!/usr/bin/env ruby
class Car
  def startEngine
    puts "Engine Started"
  end
end
my_car = Car.new
puts my_car.methods
# #=>
# startEngine
# nil?
# ===
# =~
# !~
# eql?
# hash
# <=> #List continued, but trimmed

# Alternatively, we use methods such as public_methods, protected_methods, and
# private_methods to output a list of methods by access types:

#!/usr/bin/env ruby
class Car
  def startEngine
    puts "Engine Started"
  end
end
my_car = Car.new

puts "Public Methods"
puts my_car.public_methods

puts "======================="
puts ""

puts "Protected Methods"
puts my_car.protected_methods
puts "======================="
puts ""

puts "Private Methods"
puts my_car.private_methods
puts "======================="
puts ""
#=>
# Public Methods
# startEngine
# pretty_print_instance_variables
# pretty_print_cycle
# pretty_print
# pretty_print_inspect
# hash
# singleton_class
# dup
# itself
# methods
# singleton_methods
# protected_methods
# private_methods
# public_methods
# instance_variables
# instance_variable_get
# instance_variable_set
# instance_variable_defined?
# remove_instance_variable
# instance_of?
# kind_of?
# is_a?
# display
# public_send
# extend
# clone
# <=>
# class
# ===
# then
# frozen?
# eql?
# respond_to?
# singleton_method
# define_singleton_method
# inspect
# yield_self
# pretty_inspect
# to_s
# to_enum
# equal?
# __send__
# ==
# !=
# instance_eval
# instance_exec


# =======================
# Protected Methods
# =======================



# Private Methods
# DelegateClass
# sprintf
# format
# Integer
# String
# Array
# Hash
# syscall
# open
# printf
# print
# putc
# puts
# readline
# local_variables
# p
# Rational
# readlines
# Complex
# caller
# caller_locations
# warn
# raise
# fail
# global_variables
# __method__
# __callee__
# __dir__
# fork
# exit
# set_trace_func
# eval
# iterator?
# block_given?
# catch
# throw
# loop
# `
# select
# sleep
# trace_var
# untrace_var
# rand
# at_exit
# srand
# trap
# require_relative
# autoload
# autoload?
# binding
# Float
# respond_to_missing?
# exec
# exit!
# system
# spawn
# abort
# gem_original_require
# gets
# proc
# lambda
# initialize_copy
# initialize_clone
# initialize_dup
# test
# pp
# gem
# initialize
# method_missing
# singleton_method_added
# singleton_method_removed
# singleton_method_undefined

#!/usr/bin/env ruby
class Car
  def startEngine
    puts "Engine Started"
  end
end
my_car = Car.new
my_car.inspect
#=>
#<Car:0x00000103015e60>
