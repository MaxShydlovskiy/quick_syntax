# Chapter 3
# Arrays

array = [1,10,3,1]
# => [1, 10, 3, 1]
array[0]
# => 1
array[-1]
# => 1
array[-2]
# => 3

# Creating Arrays

array = [2, "Hello", 10.02]
# => [2, "Hello", 10.02]

array = Array.new
# => []
Array.new(5)
# => [nil, nil, nil, nil, nil]
Array.new(4, 10.00)
# => [10.0, 10.0, 10.0, 10.0]

array = Array.new(4) {Hash.new}
# => [{}, {}, {}, {}]

# Accessing Array Elements

array = [1,10,3,1]
# => [1, 10, 3, 1]
array[0]
# => 1
array[3]
# => 1
array[2]
# => 3

array = [1,10,3,1]
# => [1, 10, 3, 1]
array[-2]
# => 3

array = [1,10,3,1]
# => [1, 10, 3, 1]
array[1,3]
# => [10, 3, 1]
array[1..2]
# => [10, 3]

array = [1,10,3,1]
# => [1, 10, 3, 1]
array.at(1)
# => 10
array.at(5)
# => nil

array = [1,10,3,1]
# => [1, 10, 3, 1]
array.at(5)
# => nil
array[5]
# => nil
array.fetch(5)
# IndexError: index 5 outside of array bounds: -4...4
#  from (irb):4:in `fetch'
#  from (irb):4
#  from /Users/matt/.rvm/rubies/ruby-2.1.1/bin/irb:11:in `<main>'
array.fetch(5,"error")
# => "error"

# Accessing Array Elements (Part 2)

[1,2,6].methods
# =>
# [:hash,
#  :to_h,
#  :include?,
#  :&,
#  :*,
#  :+,
#  :-,
#  :at,
#  :fetch,
#  :last,
#  :union,
#  :difference,
#  :intersection,
#  :intersect?,
#  :push,
#  :append,
#  :pop,
#  :shift,
#  :unshift,
#  :each_index,
#  :join,
#  :rotate,
#  :rotate!,
#  :sort!,
#  :sort_by!,
#  :collect!,
#  :map!,
#  :select!,
#  :filter!,
#  :keep_if,
#  :values_at,
#  :sort,
#  :delete_if,
#  :reject!,
#  :delete_at,
#  :transpose,
#  :fill,
#  :find_index,
#  :rassoc,
#  :select,
#  :filter,
#  :flatten!,
#  :reject,
#  :collect,
#  :map,
#  :compact!,
#  :flatten,
#  :repeated_permutation,
#  :uniq!,
#  :combination,
#  :count,
#  :assoc,
#  :first,
#  :bsearch,
#  :bsearch_index,
#  :repeated_combination,
#  :product,
#  :minmax,
#  :one?,
#  :all?,
#  :any?,
#  :|,
#  :reverse_each,
#  :deconstruct,
#  :pack,
#  :none?,
#  :zip,
#  :take,
#  :permutation,
#  :take_while,
#  :drop,
#  :<=>,
#  :<<,
#  :drop_while,
#  :cycle,
#  :shuffle,
#  :==,
#  :sum,
#  :uniq,
#  :compact,
#  :sample,
#  :[],
#  :[]=,
#  :shuffle!,
#  :empty?,
#  :eql?,
#  :insert,
#  :index,
#  :rindex,
#  :min,
#  :replace,
#  :inspect,
#  :clear,
#  :max,
#  :length,
#  :size,
#  :pretty_print_cycle,
#  :each,
#  :to_ary,
#  :pretty_print,
#  :reverse,
#  :reverse!,
#  :concat,
#  :to_a,
#  :to_s,
#  :prepend,
#  :delete,
#  :slice,
#  :slice!,
#  :dig,
#  :each_cons,
#  :each_with_object,
#  :chunk,
#  :slice_before,
#  :slice_after,
#  :slice_when,
#  :chunk_while,
#  :chain,
#  :lazy,
#  :to_set,
#  :find,
#  :entries,
#  :sort_by,
#  :grep,
#  :grep_v,
#  :detect,
#  :find_all,
#  :filter_map,
#  :flat_map,
#  :collect_concat,
#  :inject,
#  :reduce,
#  :partition,
#  :group_by,
#  :tally,
#  :min_by,
#  :max_by,
#  :minmax_by,
#  :member?,
#  :each_with_index,
#  :each_entry,
#  :each_slice,
#  :pretty_print_instance_variables,
#  :pretty_print_inspect,
#  :singleton_class,
#  :dup,
#  :itself,
#  :methods,
#  :singleton_methods,
#  :protected_methods,
#  :private_methods,
#  :public_methods,
#  :instance_variables,
#  :instance_variable_get,
#  :instance_variable_set,
#  :instance_variable_defined?,
#  :remove_instance_variable,
#  :instance_of?,
#  :kind_of?,
#  :is_a?,
#  :display,
#  :public_send,
#  :extend,
#  :clone,
#  :class,
#  :===,
#  :!~,
#  :tap,
#  :then,
#  :frozen?,
#  :nil?,
#  :respond_to?,
#  :method,
#  :public_method,
#  :singleton_method,
#  :define_singleton_method,
#  :freeze,
#  :object_id,
#  :yield_self,
#  :pretty_inspect,
#  :send,
#  :to_enum,
#  :enum_for,
#  :!,
#  :equal?,
#  :__send__,
#  :__id__,
#  :!=,
#  :instance_eval,
#  :instance_exec]


# Length – Output the Array Length (we can also use Size or Count):
[1,2,6].length
# => 3
[1,2,6].size
# => 3
[1,2,6].count
# => 3
# First/Last – Output the First/Last element of the array:
[1,2,6].first
# => 1
[1,2,6].last
# => 6
# Sample – Output a random element of the array:
[1,2,6].sample
# => 6
[1,2,6].sample
# => 1
[1,2,6].sample
# => 1
# Empty – Query whether the array is empty:
[1,2,6].empty?
# => false
# Include – Check whether the array contains an element with a particular value:
[1,2,6].include?(5)
# => false
# Sort – Reorders the array by values:
[1,6,2].sort
# => [1, 2, 6]
# Shuffle – Randomizes the order of the arrays elements:
[1,6,2].shuffle
# => [2, 6, 1]
[1,6,2].shuffle
# => [2, 1, 6]

# Adding/Removing Items from an Array
# Adding a new element to the end of an array:
[1,6,2].push(10)
# => [1, 6, 2, 10]
# An alternative syntax to push is <<:
[1,6,2] << 10
# => [1, 6, 2, 10]

[1,6,2].unshift(10)
# => [10, 1, 6, 2]
[1,6,2].insert(2,10)
# => [1, 6, 10, 2]
[1,6,2].insert(2,10,12)
# => [1, 6, 10, 12, 2]

# simply removing the last element:
array = [1,6,2]
# => [1, 6, 2]
array.pop
# => 2
array
# => [1, 6]
# To retrieve, and remove the first element from the array we use shift (the opposite
# of unshift):
array = [1,6,2]
# => [1, 6, 2]
array.shift
# => 1
array
# => [6, 2]

# Like the insert method, we can use a delete_at method to delete a specific position of an array:
array = [1,6,2]
# => [1, 6, 2]
array.delete_at(1)
# => 6
array
# => [1, 2]

# We can also use a delete method to delete by value, rather than by position:
array = [1,6,2]
# => [1, 6, 2]
array.delete(6)
# => 6
array
# => [1, 2]

# The previous methods allow us to add and remove specific values to specific
# positions. If we need to clean up arrays that contain nil or duplicate values, we have two
# methods available. The first is compact, for removing nil values:
array = [1,6,nil,2,nil]
# => [1, 6, nil, 2, nil]
array.compact
# => [1, 6, 2]
array
# => [1, 6, nil, 2, nil]
array.compact!
# => [1, 6, 2]
array
# => [1, 6, 2]

# Likewise we can use a uniq method to remove duplicate values from an array. Note
# that as per the compact method, we also need to use the uniq! method to update the
# array variable:
array = [1,6,1,1,nil,2]
# => [1, 6, 1, 1, nil, 2]
array.uniq
# => [1, 6, nil, 2]
array
# => [1, 6, 1, 1, nil, 2]
array.uniq!
# => [1, 6, nil, 2]
array
# => [1, 6, nil, 2]

# Looping Through Arrays

# Like all enumerable objects within Ruby, an array has an each method for iterating
# through the elements within the array.
array = [1,6,1,1,2,1]
# => [1, 6, 1, 1, 2, 1]
array.each { |item| print item, " " }
# 1 6 1 1 2 1 => [1, 6, 1, 1, 2, 1]

# Likewise, if we want to print items in a reverse order we can replace the each
# method, with a reverse_each method.
array = [1,6,1,1,2,1]
# => [1, 6, 1, 1, 2, 1]
array.reverse_each { |item| print item, " " }
# 1 2 1 1 6 1 => [1, 6, 1, 1, 2, 1]

# With the each method, even if we update the elements value, this does not change
# the initial array. Instead we can use the map method to output the changed elements,
# or the map! method to change the original array.
array = [1,6,1,1,2,1]
# => [1, 6, 1, 1, 2, 1]
array.each { |item| item-1 }
# => [1, 6, 1, 1, 2, 1]
array.map { |item| item-1 }
# => [0, 5, 0, 0, 1, 0]
array
# => [1, 6, 1, 1, 2, 1]
array.map! { |item| item-1 }
# => [0, 5, 0, 0, 1, 0]
array
# => [0, 5, 0, 0, 1, 0]

# array.each_with_index { |item,index| puts "#{index} = #{item}"
# }
# 0 = Hello
# 1 = World
# 2 = Welcome
#  => ["Hello", "World", "Welcome"]

# Selecting Elements from an Array

array = [1,2,3,4,5,6,7,8]
# => [1, 2, 3, 4, 5, 6, 7, 8]
array.select { |item| item > 5 }
# => [6, 7, 8]
array.reject { |item| item > 5 }
# => [1, 2, 3, 4, 5]
array.drop_while { |item| item < 5 }
# => [5, 6, 7, 8]
array
# => [1, 2, 3, 4, 5, 6, 7, 8]

array = [1,2,3,4,5,6,7,8]
# => [1, 2, 3, 4, 5, 6, 7, 8]
array.delete_if { |item| item > 5 }
# => [1, 2, 3, 4, 5]
array
# => [1, 2, 3, 4, 5]

array = [1,2,3,4,5,6,7,8]
# => [1, 2, 3, 4, 5, 6, 7, 8]
array.keep_if { |item| item > 5 }
# => [6, 7, 8]
array
# => [6, 7, 8]

# Exercise

dvds = Array.new
dvds.push([100000,[2,17],"Skyfall",12])
dvds.push([100001,[2,06],"The Hurt Locker",15])
dvds.push([100002,[1,45],"21 Jump Street",15])
dvds.push([100003,[1,40],"Finding Nemo",'U'])
dvds.map { |item| item[1] = item[1][0]*60+item[1][1]}
dvds.delete_if { |item| item[3].to_i >=14}
dvds.keep_if { |item| item[1] < 125 }
dvds.each { |item| print "\aYAY! We can watch ", item[2], "\n" }
#=>
# YAY! We can watch Finding Nemo
