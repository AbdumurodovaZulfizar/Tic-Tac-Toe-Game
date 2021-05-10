#!/usr/bin/env ruby
square = "+---+---+---+\n| 1 | 2 | 3 |\n+---+---+---+\n| 4 | 5 | 6 |\n+---+---+---+\n| 7 | 8 | 9 |\n+---+---+---+"
puts "Welcome to Tic Tac Toe Game. Let's begin" + "\n"
puts 'Enter the name of first player.'
first_player = gets.chomp
puts 'Enter the name of second player.'
second_player = gets.chomp
name_1 = first_player[0].upcase + first_player[1..-1].downcase
name_2 = second_player[0].upcase + second_player[1..-1].downcase
system "clear"
puts "#{name_1} will play with X, and #{name_2} will play with O"
puts "Let's start! Press Enter"
gets
system "clear"
find_winner = false
arr = [1,2,3,4,5,6,7,8,9]
3.times do
    puts square + "\n"
    puts "It's #{name_1}'s turn to play."
    puts 'Select one available cell from the board.'
    number = gets.chomp
    ele = number.to_i
    if arr.include?(ele)
      system "clear"
      puts square + "\n"
      puts "It's #{name_2}'s turn to play."
      puts 'Select one available cell from the board.'
      number = gets.chomp
        ele = number.to_i
        if arr.include?(ele)
          system "clear"
        else
          puts "Invalid value. Please enter a number between 1-9"
          number = gets.chomp
        end
    else
      puts "Invalid value. Please enter a number between 1-9"
      number = gets.chomp
    end
end

