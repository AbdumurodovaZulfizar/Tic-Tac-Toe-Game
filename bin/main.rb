#!/usr/bin/env ruby
puts "Welcome to Tic Tac Toe Game. Let's begin"
puts 'Enter the name of first player.'
first_player = gets.chomp
puts 'Enter the name of second player.'
second_player = gets.chomp
name_1 = first_player[0].upcase + first_player[1..-1].downcase
name_2 = second_player[0].upcase + second_player[1..-1].downcase
puts "#{name_1} will play with X, and #{name_2} will play with O"
puts "Let's start!"
puts "+---+---+---+\n| 1 | 2 | 3 |\n+---+---+---+\n| 4 | 5 | 6 |\n+---+---+---+\n| 7 | 8 | 9 |\n+---+---+---+"
puts "It's #{name_1}'s turn to play."
puts 'Select one available cell from the board.'
number = gets.chomp
puts "It's #{name_2}'s turn to play."
puts 'Select one available cell from the board.'
number = gets.chomp
