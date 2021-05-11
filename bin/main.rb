#!/usr/bin/env ruby
square = "+---+---+---+\n| 1 | 2 | 3 |\n+---+---+---+\n| 4 | 5 | 6 |\n+---+---+---+\n| 7 | 8 | 9 |\n+---+---+---+"
arr = []

def input_names
  flag = false
  arr = []
  name = gets.chomp
  until flag
    arr << name
    if arr.all?(/^[a-zA-Z]+$/)
      flag = true
    else
      puts 'Incorrect input, only letters accepted.'
      arr.delete(name)
      puts 'Type again your name:'
      name = gets.chomp
    end
  end
  name
end

def move_input
  number = gets.chomp
  ele = number.to_i
  until (1..9).any?(ele)
    puts 'Invalid move.Please select a number between 1-9.'
    number = gets.chomp
    ele = number.to_i
  end
  ele
end

puts "Welcome to Tic Tac Toe Game. Let's begin\n"
puts 'Enter the name of first player.'
first_player = input_names
puts 'Enter the name of second player.'
second_player = input_names
name1 = first_player[0].upcase + first_player[1..-1].downcase
name2 = second_player[0].upcase + second_player[1..-1].downcase
system 'clear'
puts "#{name1} will play with X, and #{name2} will play with O"
puts "Let's start! Press Enter"
gets
system 'clear'

def win_condition(name)
  system 'clear'
  puts "You #{name} WON!"
  gets
end

until arr.length > 9
  system 'clear'
  puts square
  puts "it's #{name1}'s turn to play."
  puts 'Please select an available cell from the board!'
  arr << move_input
  break if arr.length == 9

  system 'clear'
  puts square
  puts "it's #{name2}'s turn to play."
  puts 'Please select an available cell from the board!'
  arr << move_input
  win_condition(name2) if arr.length == 4
end
system 'clear'
puts 'It a TIE'
puts 'Game over!'
