#sets i to 0
i = 0
#create a new empty array
$numbers = []

#while i is less than six,
#push the current number i is set to to the back of the array
#add 1 to i after that,
#then output the array of numbers which will obviously grow
#at the bottom is the largest value i currently is
#so 1 will go to the back, then 2, then 3
#so the smallest is at the front and largest at the back
def whileLoopTest(start, max)
  while start < max
    puts "At the top i is #{start}"
    $numbers.push(start)

    start+=1

    puts "Numbers now: ", $numbers
    puts "At the bottom i is #{start}"
  end

  puts "The numbers: "
  #the for-each loop you're not meant to use in ruby
  for number in $numbers
    puts number
  end
  #
  #these two are acceptable practises in Ruby and the first one looks pretty much
  #the same as the one underneath
  $numbers.each do |number|
    puts number
  end

  $numbers.each {|num| puts num}

end

puts "What is the largest number you want?"
max = $stdin.gets.chomp.to_i
whileLoopTest(i, max+1)
