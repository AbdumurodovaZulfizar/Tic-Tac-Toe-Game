#!/usr/bin/env ruby
square = "+---+---+---+\n| 1 | 2 | 3 |\n+---+---+---+\n| 4 | 5 | 6 |\n+---+---+---+\n| 7 | 8 | 9 |\n+---+---+---+"
puts "Welcome to Tic Tac Toe Game. Let's begin\n"
puts 'Enter the name of first player.'
first_player = gets.chomp
puts 'Enter the name of second player.'
second_player = gets.chomp
name1 = first_player[0].upcase + first_player[1..-1].downcase
name2 = second_player[0].upcase + second_player[1..-1].downcase
system 'clear'
puts "#{name1} will play with X, and #{name2} will play with O"
puts "Let's start! Press Enter"
gets
system 'clear'
2.times do
  system 'clear'
  puts square
  puts "it's #{name1}'s turn to play."
  puts 'Please select an available cell from the board!'
  number = gets.chomp
  ele = number.to_i
  until (1..9).any?(ele)
    puts 'Invalid move. Please enter a number between 1-9' unless (1..9).any?(ele)
    number = gets.chomp
    ele = number.to_i
  end
  system 'clear'
  puts square
  puts "it's #{name2}'s turn to play."
  puts 'Please select an available cell from the board!'
  number = gets.chomp
  ele = number.to_i
  until (1..9).any?(ele)
    puts 'Invalid move. Please enter a number between 1-9' unless (1..9).any?(ele)
    number = gets.chomp
    ele = number.to_i
  end
end
puts "#{name2} you WON the game!!!"
gets
system 'clear'
2.times do
  system 'clear'
  puts square
  puts "it's #{name1}'s turn to play."
  puts 'Please select an available cell from the board!'
  number = gets.chomp
  ele1 = number.to_i
  until (1..9).any?(ele1)
    puts 'Invalid move. Please enter a number between 1-9' unless (1..9).any?(ele1)
    number = gets.chomp
    ele1 = number.to_i
  end

  system 'clear'
  puts square
  puts "it's #{name2}'s turn to play."
  puts 'Please select an available cell from the board!'
  number = gets.chomp
  ele2 = number.to_i
  until (1..9).any?(ele2)
    puts 'Invalid move. Please enter a number between 1-9' unless (1..9).any?(ele2)
    number = gets.chomp
    ele2 = number.to_i
  end
end

system 'clear'
puts square
puts "it's #{name1}'s turn to play."
puts 'Please select an available cell from the board!'
number = gets.chomp
ele1 = number.to_i
until (1..9).any?(ele1)
  puts 'Invalid move. Please enter a number between 1-9' unless (1..9).any?(ele1)
  number = gets.chomp
  ele1 = number.to_i
end
puts "It's a TIE\n"
puts 'Game over'
