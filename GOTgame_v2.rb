#Game of Thrones trivia game
def formatting(str)
  puts str * 80
end

formatting("*")
puts "Welcome to the Game of Thrones trivia!"
formatting("*")
puts "You are now in the world of Westoros. Will you take the throne?"
puts " "
puts "Choose your house to begin:"


# puts "Type 'I love GOT' to begin"
# puts "Choose your house"
house_options = [
  "stark",
  "lannister",
  "baratheon",
  "targaryen",
  "greyjoy",
  "arryn",
  "martell",
  "tully",
  "tyrell"
]
puts house_options.map {|option| option.capitalize}
#this is capitalizing the house names for the user

formatting("*")


answer = gets.chomp.downcase
house = answer.capitalize
if house_options.include? answer
    puts "WINTER IS COMING! Are you ready to be a #{house}? Let the games begin!"
    formatting("*")
  else
    puts "You think you're sneaky huh? I shall choose for you then:"
    puts answer = house_options.sample.capitalize
    house = answer.capitalize
    puts "WINTER IS STILL COMING! It's time to prove that you're a #{house}!"
    formatting("*")
  end

# HOUSE = answer
points = 0

def ask_question(question,options)
  puts question
  puts options
end

array_of_questions = ["Who is the mother of dragons?",
"True or False: In season 1, Cersei Lannister pushed Bran Stark out the window.",
"A Lannister always ____________.",
"How many kingdoms are there in Westoros?",
"Who has Petyr Baelish loved since he was a child?",
"Who cut off Jaime Lannister's hand?",
"Who poisoned King Joffrey at the Purple Wedding?",
"What is the name of Jon Snow's wolf?"
]

array_of_options = ["a. Arya Stark b. Daenerys Targaryen c. Sansa Stark",
  "t or f",
"a. pays his debt b. kills the enemy c. wins",
"a. seven b. nine c. five",
"a. Sansa Stark b.Lysa Arryn c. Caitlyn Stark",
"a. Locke b. Richard Karstark c. Roose Bolton d. Polliver",
"a. Sansa Stark b. Lady Olenna Tyrell c. Petyr Baelish",
"a. Lady b. Nymeria c. Ghost"
]

array_of_answers = ["b", "f", "a", "a", "c", "a", "b","c"]

wrong_responses = ["SHAME!! 0 points for you!!",
  "You know nothing Jon Snow! Incorrect!",
  "The night is dark and full of terrors. No points for you!",
  "I shall show you no mercy.",
  "The queen would be so disappointed."
  ]

right_responses = ["HODOR! 5 points for you!",
  "Fire cannot kill a dragon. Correct!",
  "You're perfect aren't you?",
  "You're one step closer to the throne!"

]


i = 0
while i < array_of_questions.length
  ask_question(array_of_questions[i], array_of_options[i])
  answer = gets.chomp.downcase

  if answer != array_of_answers[i]
    formatting("=")
    puts wrong_responses.sample
    points = points - 5
    puts "The house #{house} now holds #{points} points"
    formatting("=")

  else
    formatting("=")
    puts right_responses.sample
    points = points + 5
    puts "The house #{house} now holds #{points} points"
    formatting("=")
  end
  if points >= 25
    break
  end
  i += 1
end

if points >= 25
  puts "The throne is yours!"
  formatting("*")
  puts "GAME OVER!"
  formatting("*")
else
puts "You will never sit on the Iron Throne."
formatting("*")
puts "GAME OVER!"
formatting("*")
end

#******************************************************
# Good job on this game. I know you understand all these concepts because we worked on it togheter. 
# I like the simple elegance of your game flow.
# Just one comment: Please keep an eye out for spacing and indentations (lines 122 - 125). It's better to get that habbit early than to try
# to correct it later when your code is pages and pages.





#Fire cannot kill a dragon

#add points to a variable to create a point system for the game
#player must reach 25 points to win
# each question is worth 5 points!
