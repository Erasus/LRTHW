$money_in_wallet = 0
#defines numerous functions for the different rooms
def gold_room
  puts "This room is full of gold. How much do you want to take?"
  print "> "
  #takes input off user
  choice = $stdin.gets.chomp
  #bugged line
  #NOTE: fixed, counts how many a-z or A-Z characters are inputted in the users
  #choice, as this is expecting a number
  if choice.count("a-zA-Z") > 0
    #kills player
    dead("Man, learn to type a number")
  else
    #how_much is the amount of gold
    $money_in_wallet = choice.to_i
    how_much = choice.to_i
  end
  if(how_much < 50)
    pay_room
    puts "Not going there"
  else
    dead("You greedy bastard!")
  end
end

def bear_room
  puts "There is a bear here."
  puts "The bear has a bunch of honey."
  puts "THe fat bear is in front of another door."
  puts "How are you going to move the bear?"
  bear_moved = false

  while true
    print "> "
    choice = $stdin.gets.chomp

    if choice == "take honey"
      dead("The bear looks at you then slaps your face off.")
    elsif choice == "taunt bear" && !bear_moved
      puts "The bear has moved from the front door. You can go through it now."
      bear_moved = true
    elsif choice == "taunt bear" && bear_moved
      dead("The bear gets pissed off and chews your leg off.")
    elsif choice == "open door" && bear_moved
      gold_room
    else
      puts "I got no idea what that means."
    end
  end
end

def cthulhu_room
  puts "Here you see the great evil Cthulhu."
  puts "He, it, whatever stares at you and you go insane."
  puts "Do you flee for your life or eat your head?"

  print "> "
  choice = $stdin.gets.chomp
  if(choice.include? "flee")
    start
  elsif choice.include? "head"
    dead("Well that was tasty!")
  else
    cthulhu_room
  end
end

def pay_room
  if $money_in_wallet <= 39
    puts "Sorry, you can't come in here."
    gold_room
  else
    puts "Congratulations, you won the game!"
    exit(0)
  end
end

def dead(why)
  puts why, "Good job!"
  exit(0)
end

def start
  puts "You are in a dark room."
  puts "There is a door to your right and left."
  puts "WHich one do you take?"

  print "> "
  choice = $stdin.gets.chomp

  if choice == "left"
    bear_room
  elsif choice == "right"
    cthulhu_room
  else
    dead("You stumble around the room until you starve.")
  end
end

start
