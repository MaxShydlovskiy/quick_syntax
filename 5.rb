# Chapter 5
# Hashes

# Creating Hashes
score = { "Joe Bloggs" => 10, "Sarah Bloggs" => 8 }
# => {"Joe Bloggs"=>10, "Sarah Bloggs"=>8}
stock = {}
# => {}

stock = { :books => 25, :cds => 7 }
# => {:books=>25, :cds=>7}
stock = { books: 25, cds: 7 }
# => {:books=>25, :cds=>7}
# A hash can also be initialized using the new method:
stock = Hash.new
# => {}
stock[:books] = 25
# => 25
stock[:cds] = 7
# => 7
stock => {:books=>25, :cds=>7}

# We can also assign a default value to use when attempting to retrieve a key that does
# not exist within the hash:
stock = Hash.new(0)
# => {}
stock[:books] = 25
# => 25
stock[:dvds]
# => 0
# Alternatively, we can set the default parameter on an existing hash:
stock = { :books => 25, :cds => 7 }
# => {:books=>25, :cds=>7}
stock.default = 0
# => 0
stock[:dvds]
# => 0

# Hash Information

score = { "Joe Bloggs" => 10, "Sarah Bloggs" => 8 }
# => {"Joe Bloggs"=>10, "Sarah Bloggs"=>8}
score.count
# => 2
score.size
# => 2
2.1.1 :004 > score.length
# => 2
# To determine whether a hash is empty, we can use the simple empty? method, which
# returns true or false:
score = { "Joe Bloggs" => 10, "Sarah Bloggs" => 8 }
# => {"Joe Bloggs"=>10, "Sarah Bloggs"=>8}
score.empty?
# => false
stock = {}
# => {}
stock.empty?
# => true

# We can also determine whether two hashes are identical by using the eql? method:
score = { "Joe Bloggs" => 10, "Sarah Bloggs" => 8 }
# => {"Joe Bloggs"=>10, "Sarah Bloggs"=>8}
grades = { "Joe Bloggs" => 10, "Sarah Bloggs" => 8 }
# => {"Joe Bloggs"=>10, "Sarah Bloggs"=>8}
score.eql? grades
# => true
grades = { "Joe Bloggs" => 10, "Sarah Bloggs" => 9 }
# => {"Joe Bloggs"=>10, "Sarah Bloggs"=>9}
score.eql? grades
# => false
# If we need to expose whether the hash contains a particular key or value, we can
# utilize the has_key? and has_value? methods:
score = { "Joe Bloggs" => 10, "Sarah Bloggs" => 8 }
# => {"Joe Bloggs"=>10, "Sarah Bloggs"=>8}
score.has_key? "Joe Bloggs"
# => true
score.has_key? "John Bloggs"
# => false
score.has_value? 3
# => false
score.has_value? 8
# => true

# Sorting Hash Elements
# To complete basic sorting on a hash within Ruby, we can utilize the sort method:
stock = { 25 => "Books", 7 => "CDs", 2 => "DVDs" }
# => {25=>"Books", 7=>"CDs", 2=>"DVDs"}
stock.sort
# => [[2, "DVDs"], [7, "CDs"], [25, "Books"]]

# Accessing Hash Elements
# To retrieve hash elements, rather like an array, you address the hash symbol with the hash
# [key] syntax:

stock = { :books => 25, :cds => 7 }
# => {:books=>25, :cds=>7}
stock[:books]
# => 25

# We can also utilize other types of keys, such as the strings used previously in the
# first example:
score = { "Joe Bloggs" => 10, "Sarah Bloggs" => 8 }
# => {"Joe Bloggs"=>10, "Sarah Bloggs"=>8}
score["Joe Bloggs"]
# => 10

class Score
  def self.register(params)
       @name = params[:name]
       @score = params[:score]
       puts "#{@name} got a score of #{@score}"
  end
end
Score.register(name: "Joe Bloggs", score: 10)
# => Joe Bloggs got a score of 10

# We can also utilize a select method to pass a statement to the hash, in order to
# select a range of elements:

stock = { :books => 25, :cds => 7, :dvds => 2 }
# => {:books=>25, :cds=>7, :dvds=>2}
stock.select{|type,quantity| quantity > 5 }
# => {:books=>25, :cds=>7}


# Looping Through Hashes
scores = {
  "John" => 10,
  "Paul" => 8,
  "Sarah" => 9
}
scores.each do|name,score|
  puts "#{name}: #{score}"
end
# John: 10
# Paul: 8
# Sarah: 9
#  => {"John"=>10, "Paul"=>8, "Sarah"=>9}

scores = { "John" => 10, "Paul" => 8, "Sarah" => 9 }
scores.each_key do|name|
  puts "#{name}"
end
# =>
# John
# Paul
# Sarah
scores = { "John" => 10, "Paul" => 8, "Sarah" => 9 }
scores.each_value do|score|
  puts "#{score}"
end
# =>
# 10
# 8
# 9

# Altering Hashes
stock = {:books => 2, :cds => 7}
# => {:books=>2, :cds=>7}
stock.delete(:books)
# => 2
stock
# => {:cds=>7}

stock = {:books => 2, :cds => 7, :dvds => 200}
# => {:books=>2, :cds=>7, :dvds=>200}
stock.delete_if {|key, value| value < 3 }
# => {:cds=>7, :dvds=>200}
stock.delete_if {|key, value| key == :dvds }
# => {:cds=>7}

# We can reverse this logic and use a keep_if instead, where all matching elements
# from the block are kept and any which return false are deleted:
stock = {:books => 2, :cds => 7, :dvds => 200}
# => {:books=>2, :cds=>7, :dvds=>200}
stock.keep_if {|key, value| value < 3 }
# => {:books=>2}
# We can also clear a hash of all elements if required:
stock = {:books => 2, :cds => 7, :dvds => 200}
# => {:books=>2, :cds=>7, :dvds=>200}
stock.clear
# => {}
# Similar to an array, we can use a shift method to remove an element from the hash.
# However, note that as a hash’s order is not guaranteed, there is no control over which
# key/value pair is being deleted. This is, however, useful during a loop.
stock = {:books => 2, :cds => 7, :dvds => 200}
until stock.empty?
  name, stock_level = stock.shift
  puts "Removing stock for #{name}: #{stock_level}"
end
# Removing stock for books: 2
# Removing stock for cds: 7
# Removing stock for dvds: 200

# Merging Hashes
stock1 = {:books => 2, :cds => 7}
stock2 = {:cds => 2, :dvds => 7}
stock1.merge(stock2)
# => {:books=>2, :cds=>2, :dvds=>7}
stock1
# => {:books=>2, :cds=>7}
stock1.merge!(stock2)
# => {:books=>2, :cds=>2, :dvds=>7}
stock1
# => {:books=>2, :cds=>2, :dvds=>7}

stock1 = {:books => 2, :cds => 7}
stock2 = {:cds => 2, :dvds => 7}
stock1.merge(stock2){|key, oldvalue, newvalue| newvalue+oldvalue}
# => {:books=>2, :cds=>9, :dvds=>7}

# Exercise

dvds = Hash.new

dvds["Skyfall"] = {:id => 100000, :hours => 2, :mins => 17, :classification => 12}
dvds["The Hurt Locker"] = {:id => 100001, :hours => 2, :mins => 6, :classification => 15}
dvds["21 Jump Street"] = {:id => 100002, :hours => 1, :mins => 45, :classification => 15}
dvds["Finding Nemo"] = {:id => 100003, :hours => 1, :mins => 40, :classification => 'U'}

dvds.each do|name,details|
  details[:mins] = details[:mins] + (details[:hours]*60)
end

dvds.delete_if { |name,details| details[:classification].to_i >=14}

dvds.keep_if { |name,details| details[:mins] < 125 }

dvds.each_key { |name| print "\aYAY! We can watch ", name, "\n" }
