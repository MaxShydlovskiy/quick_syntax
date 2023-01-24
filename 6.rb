# Chapter 6
# Numbers

# Creating Numbers

number = 10                   # => 10
number.is_a?(Integer)         # => true
number = 10.2                 # => 10.2
number.is_a?(Integer)         # => false
number.is_a?(Float)           # => true

# Numeric Alterations
number = 10                   # => 10
number = number + 2           # => 12
number = number - 5           # => 7
number = number * 2           # => 14
number = number / 7           # => 2

number = 10                   # => 10
number.class                  # => Integer

number = number + 2           #=> 12
number.class                  # => Integer

number / 4                    # => 2 #Notice this should be 2.5
number.class                  # => Integer

number = 10                   # => 10
number.class                  # => Integer

number = number / 6.5         # => 1.5384615384615385 #Notice a conversion has taken place as the divider was a float
number.class                  # => Float

number = 10                   # => 10
+number                       # => 10
-number                       # => -10

number = -5                   # => -5
+number                       # => -5
-number                       # => 5

number = 10                   # => 10
number.abs                    # => 10
number = -4                   # => -4
number.abs                    # = > 4

number = 11.5                 # => 11.5
number.ceil                   # => 12
number.floor                  # => 11
number = 3.1                  # => 3.1
number.ceil                   # => 4
number.floor                  # => 3

number = 10.6                 # => 10.6
number.round                  # => 11
number = 10.4                 # => 10.4
number.round                  # => 10
number = 10.5                 # => 10.5
number.round                  # => 11

number = 10                   # => 10
number = number.div 5         # => 2

number = 10                   # => 10
number = number.remainder 4   # => 2

number = 10                   # => 10
number = number.modulo 4      # => 2
number = -10                  # => -10
number.modulo 4               # => 2
number.remainder 4            # => -2

number = 10                   # => 10
number.divmod 4               # => [2, 2]
number = -10                  # => -10
number.divmod 4               # => [-3, 2]

number = 10                   # => 10
number.quo 2                  # => (5/1)
number = 10                   # => 10
number = number.quo 4         # => (5/2)
number.to_f                   # => 2.5

# Numeric Comparison

number = 10                   # => 10
number > 5                    # => true
number >= 10                  # => true
number < 5                    # => false
number <= 10                  # => true

# We can also utilize the == comparator to check for equal values
10 == 10                      # => true
10 == 10.0                    # => true
10 == 11                      # => false
10 == 10.001                  # => false
10 <=> 11                     # => -1
10 <=> 9                      # => 1
10 <=> 10                     # => 0
10.eql? 10                    # => true
10.eql? 10.0                  # => false
10.eql? 11                    # => false
10.eql? 10.001                # => false
10.integer?                   # => true
10.2.integer?                 # => false
10.0.integer?                 # => false
-1.integer?                   # => true

10.zero?                      # => false
0.zero?                       # => true

10.nonzero?                   # => 10
0.nonzero?                    # => nil

10.odd?                       # => false
10.even?                      # => true
15.odd?                       # => true
15.even?                      # => false
0.even?                       # => true
0.odd?                        # => false

10.between?(5,15)             # => true
15.between?(5,15)             # => true
16.between?(5,15)             # => false
5.between?(5,5)               # => true
6.between?(5,5)               # => false

10.upto(16) { |i| puts i }
# 10
# 11
# 12
# 13
# 14
# 15
# 16
#  => 10
-5.upto(-10) { |i| puts i } # => -5

-10.upto(-5) { |i| puts i }
# -10
# -9
# -8
# -7
# -6
# -5
#  => -10

# Exercise

dvds = Array.new

dvds.push([100000,137,"Skyfall",12])
dvds.push([100001,114,"The Hurt Locker",15])
dvds.push([100002,105,"21 Jump Street",15])
dvds.push([100003,100,"Finding Nemo",'U'])

dvds.delete_if { |item| item[3].to_i.between?(10,15)}

dvds.keep_if { |item| item[1].quo(60).to_f < 2 }

dvds.each { |item| print "\aYAY! We can watch ", item[2], "\n" }
# YAY! We can watch Finding Nemo
#  => [[100003, 100, "Finding Nemo", "U"]]
