#This is ran at the beginning of the file.
BEGIN{puts "Hello, this is the file beginning"}
#Create a class
#You need to have an initialize method, with at least one definding method.
class Cat
  def initialize(breed, name)
    @breed = breed
    @name = name
  end
  #methods that we can access from the creation of an object
  def meow
    puts "Meow!"
  end
  def dex_meow
    puts "rararaoerew"
  end

  alias dmeow dex_meow
end

dexter = Cat.new("Siamese", "Dexter")
puts dexter.dex_meow
puts dexter.meow
puts dexter.dmeow
puts dexter.dmeow
#define a test function for purposes underneath
def testFunction
  puts "Test"
end
#Checks whether a function is already defined
if defined? Function = "testFunction"
  puts "true"
end
#Range for each loop, making x the object
(0..5).each do |x| puts x end
#This is ran at the end of the file
END{puts "This is the file ending." }
