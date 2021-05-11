#!/usr/bin/env ruby

require_relative '../lib/player'

combinations = [[1, 2, 3], [4, 5, 6], [7, 8, 9], [1, 4, 7], [2, 5, 8], [3, 6, 9], [1, 5, 9], [3, 5, 7]]
board = "+---+---+---+\n| 1 | 2 | 3 |\n+---+---+---+\n| 4 | 5 | 6 |\n+---+---+---+\n| 7 | 8 | 9 |\n+---+---+---+"
boxes = []
set1 = []
set2 = []
winner = ''

def input_names(num)
  flag = false
  puts "Please enter player number #{num}'s name:"
  name = gets.chomp
  until flag
    if name.split('*').all?(/^[a-zA-Z]+$/)
      flag = true
    else
      system 'clear'
      puts 'Incorrect input, only letters accepted.'
      puts 'Type again your name:'
      name = gets.chomp
    end
  end
  name
end

player1 = Player.new(input_names(1))
player2 = Player.new(input_names(2))

def check_number
  num = gets.chomp.to_i
  flag = false
  until flag
    if num.is_a?(Numeric) && (1..9).any?(num)
      flag = true
    else
      puts 'Please only enter a number and from 1-9.'
      num = gets.chop.to_i
    end
  end
  num
end

def turn(player, box)
  puts "It's #{player}'s turn:"
  num = check_number
  flag = false
  until flag
    if box.any?(num)
      puts "Can't choose that number, try again:"
      num = gets.chomp.to_i
    else
      box << num
      flag = true
    end
  end
  num
end

def symbol(number, symbol, board)
  board[board.index(number.to_s)] = symbol
end

def display_board(index)
  system 'clear'
  puts index
end

def check_winner(set, com)
  flag = false
  if set.length == 3
    8.times do |i|
      flag = true if com[i].sort == set.sort
    end
  end
  flag
end

def empty_set(set)
  set = [] if set.length == 3
  set
end

loop do
  display_board(board)
  set1 << turn(player1.name, boxes)
  display_board(symbol(set1.last, 'X', board))
  win1 = check_winner(set1, combinations)
  set1 = empty_set(set1)
  winner = player1.name
  break if win1

  display_board(board)
  set2 << turn(player2.name, boxes)
  display_board(symbol(set2.last, 'O', board))
  win2 = check_winner(set2, combinations)
  set2 = empty_set(set2)
  winner = player2.name
  break if win2
end
system 'clear'
puts "#{winner} you have WON!"
