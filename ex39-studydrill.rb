game_ratings = {
  'Overwatch' => ['Good', 'Multiplayer'],
  'Rising Storm 2: Vietnam' => ['Great', 'Multiplayer'],
  "The Witcher 3: Wild Hunt" => ['Flawless', 'Single-Player']
}

rating_explain = {

  'Good' => """This explanation is usually for a game that has a lot of good
  qualities, but does have some flaws, and therefore is just a 'Good' game.""",
  'Great' => """Great is obviously better than good, which either means more
  good qualities than flaws, or just less flaws.""",
  'Flawless' => """A game without flaws, nigh-on perfect, or perfect."""
}

game_genre = {
  'Single-Player' => """This is a single-player game. This means only one player
   can play it at any time""",
   'Multiplayer' => """This is a multiplayer game, therefore more than one
   person can play the game at any given time, as well as this, there may be
   no single-player element to the game."""
}
alphabet = {
  'A' => ['Apple', 'Abacus', 'Art']
}
words = {
  'Apple' => 'the round fruit of a tree of the rose family, which typically has thin green or red skin and crisp flesh',
  'Abacus' => 'a simple device for calculating, consisting of a frame with rows of wires or grooves along which beads are slid',
  'Art' => 'the various branches of creative activity, such as painting, music, literature, and dance.'
}
#output the game ratings
game_ratings.each do |game, rating|
  #this is the rating explanation. which goes into the rating object, which holds
  #2 values, it indexes the first value for eg. "Good", and goes into
  #"rating_explain" and matches it with the corresponding value
  ratingexp = rating_explain[rating[0]]
  #does the same, but uses the second value to exlain the genre.
  genreexp = game_genre[rating[1]]
  puts "#{game} is generally rated as a #{rating[0]} game."
  puts ratingexp
  puts genreexp
end

#outputting the alphabet dictionaries
#letter is the first value in alphabet, word holds all of the words
#corresponding to the letter and outputs the letter first
alphabet.each do |letter, word|
  puts "The letter #{letter} has:"
  #then for each word in the word object
  word.each do |w|
    #output the word
    puts "#{w}\n"
    puts "The definition of #{w} is:\n"
    #go into definition list and match the current word to the
    #definition in words.
    puts words[w]
  end
end
