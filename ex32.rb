the_count = [1, 2, 3, 4, 5]
fruits = ['apples', 'oranges', 'pears', 'apricots']
change = [1, 'pennies', 2, 'dimes', 3, 'quarters']

#this first kind of for-loop goes through a list
#in a more traditional style found in other languages

the_count.each do |count|
  puts "This is count #{count}"
end

#same as about, but in a Ruby fashion
#this nd the next one are the preferred
#way Ruby for-loops are written

#NOTE: |fruit| is the object within the array that is being accessed
#essentially saying, for each fruit do a new object called fruit
#and it can be called that way.

fruits.each do |fruit|
  puts "A fruit of type: #{fruit}"
end

#also we can go through mixed lists too
#note this is yet another style, exactly like above
#but a different syntax (way to write it)

change.each{|i| puts "I got #{i}"}

#we can also build lists, start with an empty one
elements = []

#then use the range operator to do 0 to 5 counts
#double dots go from the first to last value requested
#triple dots do the same, just doesn't put the last value
#.. : 1-100 will give 1 - 100
#... : 1-100 will give 1-99
(10*1..10*10).each do |i|
  puts "adding #{i} to the list."
  #pushes the i variable on the *end* of the list.
  elements.push(i)
end

#now we print them out
elements.each {|i| puts "Element was: #{i}"}
