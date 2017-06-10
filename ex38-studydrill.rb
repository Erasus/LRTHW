#creates arrays for food items, general items, and meals
list_item = ["Mucous", "Tooth-Decay", "Armpit Hair", "Wart",
             "Toenail Clipping", "Clump of pubic hair", "Donald Trump's Ballsack Sweat"]
list_food = ["Bread", "Milk", "Chicken", "Apple", "Banana", "Tomato", "Marmite",
             "Pickle", "Gerkin", "Semen", "Crisps"]
list_meals =  ["Sandwich", "Cereal", "Omelette", "Porridge", "Coffee",
                    "Toast", "Yoghurt", "Tea", "Salad"]

puts "Let's make you a breakfast!"
puts "Press enter when you're ready to go:"
#takes enter input
$stdin.gets.chomp
#takes a random item from each of the arrays
#NOTE: length -1 is because indexes start at 0 so therefore the length
#is always 1 larger than the array
itemRandom = list_item[rand(list_item.length-1)]
foodRandom = list_food[rand(list_food.length-1)]
mealRandom = list_meals[rand(list_meals.length-1)]
#creates empty array for user meal
user_selected_meal =[]
#this function checks if the user input is one, if it is one
#change it to zero, to handle the array indexing correctly
def check_if_one(dec)
  if dec == 1
    dec = dec - 1
    return dec
  else
    #return all numbers
    dec = dec
    return dec
  end
end

puts "Alright, we've conjured up something nice for you!\nYou're going to have:\n"
puts "A #{itemRandom} and #{foodRandom} #{mealRandom}! I hope you enjoy it!\n"
puts "------------------------------------------------------\n"
puts "Alright, now it's your turn give me a number between 1 and #{list_item.length-1}
to add an item to your breakfast."
#takes a numeric decision from the user, which then runs through the check_if_one
#function after being converted to an integer, then stores the actual object data
#in the decision, does this for each decision requested
decision = list_item[check_if_one($stdin.gets.chomp.to_i)]
#pushes the user decision to the back of the list, done for each decision
user_selected_meal.push(decision)
puts "Now for your food item, give me a number between 1 and #{list_food.length-1}"
decision = list_food[check_if_one($stdin.gets.chomp.to_i)]
user_selected_meal.push(decision)
puts "Finally, for what kind of meal you want, between 1 and #{list_meals.length-1}"
decision = list_meals[check_if_one($stdin.gets.chomp.to_i)]
user_selected_meal.push(decision)

puts "Alright, so you wanted: #{user_selected_meal.join(" ")}"
