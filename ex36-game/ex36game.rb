require "./health-module.rb"
$inventory = []
$a1LA = false
$a1Knife_Taken = false

def start
  puts "To view instructions press 1, to go to the game press 2"
  decision = $stdin.gets.chomp
  if decision == "1"
    instructions
  else
    area1
  end
end

def instructions
  puts """
  To play this game you will have a variety of commands.
  Look around- Look around the room you are currently in.
  Take - Take an item that is in the room
  Y/N - Decide Yes or No
  Number Inputs - 1, 2, 3 etc. Decides your choice.
  Hit - Hit something
  Run - Leave the room
  There are other things you will encounter along the way, that will be
  explained.
  Open - Opens a door/window/etc.
  Inventory - Displays current inventory
  """
  start
end

def area1
  puts """
  --------------------------------------------------------------------------\n
  You are darkened room, unaware of your exact location, or reason as to why
  you're there, what do you do?
  --------------------------------------------------------------------------\n
  """
  decision = $stdin.gets.chomp
  if decision == "Look around"
    puts """
    --------------------------------------------------------------------------\n
    You're standing in the middle of the room, you notice. Behind you is\n
    a door, with a padlock, locked, attached to it. Infront of you is a door,\n
    which doesn't appear to be locked. That's all that's in the room, bizarrely\n
    enough. On a table lies a knife
    --------------------------------------------------------------------------\n
    """
    $a1LA = true
    area1
  elsif decision == "Run door behind"
    puts """You try to run out of the locked door behind you, running into it and
    hitting your head. You suffer a small gash and start to gain a headache.
    """
    HealthCalc.take_damage(35)
    area1
  elsif decision == "Inventory"
    puts $inventory
    area1
  elsif decision == "Take knife" && $a1LA == true && $a1Knife_Taken == false
    $inventory.push("Knife")
    puts "Inventory Contains: #{$inventory}"
    $a1Knife_Taken = true
    area1
  elsif decision == "Take knife" && $a1Knife_Taken == true
    puts "You've already taken the knife!"
    area1
  else
    puts "I don't know what you want me to do."
    area1
  end
end
start
