#using hashes we create a mapping of state to abbreviation
states = {
  'Oregon' => 'OR',
  'Florida' => 'FL',
  'California' => 'CA',
  'New York' => 'NY',
  'Michigan'=> 'MI'
}

#using hashes we create a mapping of cities within those states
cities ={
  'CA' => 'San Francisco',
  'MI' => 'Detroit',
  'FL' => 'Jacksonville'
}

#adding more cities dynamically
cities['NY'] = 'New York'
cities['OR'] = 'Portland'

#output cities
puts '-' * 10
puts "NY State has: #{cities['NY']}"
puts "OR State has: #{cities['OR']}"

#output some states
puts '-' * 10
puts "Michigan's abbreviation is: #{states['Michigan']}"
puts "Florida's abbreviation is: #{states['Florida']}"

#do it by using the state then cities dict
puts '-' * 10
puts "Michigan has: #{cities[states['Michigan']]}"
puts "Florida has: #{cities[states['Florida']]}"

#outputs every state abbreviation
puts '-' * 10
#the first variable is the state, the second points to the abbreviation mapped to
#the hash value and outputs that
states.each do |state, abbrev|
  puts "#{state} is abbreviated to #{abbrev}"
end

puts '-' * 10
#every cities
cities.each do |abbrev, city|
  puts "#{abbrev} has the city #{city}"
end
#now it does both at the same time
puts '-' * 10
states.each do |state, abbrev|
  city = cities[abbrev]
  puts "#{state} is abbreviated #{abbrev} and has city #{city}"
end

puts '-' * 10
#by default ruby says nil if something isnt there
state = states['Texas']

if !state
  puts "Sorry, no Texas."
else
  puts state
end

#default values using ||= with the nil result
cities = cities['TX']
#This will output the default value if city doesn't exist, rather thanNil
city ||= 'Does Not Exist'
puts "The city for the state 'TX' is: #{city}"
