-players need to be initialized inside the Game class

## MY CLASS AND METHODS

Class game
  
  DEF players END
  DEF generated_question END
  DEF answer END
  DEF GAME_OVER END

END

-player class
-game class
-game over class

## DESCRIPTIONS

The game class will contain all of the methods I need, all of the methods need to be connected together

The players method will be used to introduce our players briefly to the game

The generated question is a method that will randomly generated two numbers for 1 - 20 and add them together, the sum will be saved as @answer

The answer method will be where the conditionals are held, if a player answers right they're spared, if not they lose a life

Game Over will only be spawned when a player hits 0 lives. Generated question and answer methods will be wrapped in a 'while' loop



## BASIC LOGIC OUTLINE

What is player1 name ?

Aphason

What is player2 name ?

Sam

Ok we're good to go

Aphason, what is 8 + 5
Good job / now you have {however many} lives left

puts "player1_name, what is num1 + num2"
response = stdin.gets.chomp
if response === answer
  puts "Good job"
  else
  lives - 1

Sam, what is 12 + 4

-same logic goes here

The first player who hits 0 lives loses the game

while the game isn't over, our function will continue to ask us arthimetic questions


@player1 = player_1
@player2 = player_2