#Makes a string containing 6 items
ten_things = "Apples Oranges Crows Telephone Light Sugar"
#Outputs text
puts "Wait there are not 10 things in this list. Let's fix that"
#Splits the ten_things, i.e. separates after the whitespace.
#You can change it so it splits after recognising a character
#Like "D", or "s"
stuff = ten_things.split(' ')
#create another array
more_stuff = ["Day", "Night", "Song", "Frisbee", "Corn", "Banana", "Girl", "Boy"]

#using math to make sure there's 10 items
while stuff.length != 10
  #pops another item off the back of the list, for example "Boy" would be first
  #if you wanted it to be the first one, you'd use shift
  next_one = more_stuff.pop
  #outputs text
  puts "Adding #{next_one}"
  #inserts the item into the back of the list
  stuff.push(next_one)
  puts "There are #{stuff.length} items now"
end

puts "There we go: #{stuff}"

puts "Let's do some things with stuff."
#outputs the seconditem
puts stuff[1]
#outputs the last item
puts stuff[-1]
#pops off(removes) the first item from the list and outputs it to the user
puts stuff.pop()
#joins the list after whitespace
puts stuff.join(' ')
#joins items together with a hash
puts stuff[3..5].join("#")
