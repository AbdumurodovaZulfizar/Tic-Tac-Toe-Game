#!/usr/bin/env ruby
require_relative '../lib/player'
require_relative '../lib/board'
require_relative '../lib/game'

def check_name(num)
  flag = false
  puts "Please enter player number #{num}'s name:"
  name = gets.chomp
  until flag
    if name.split('*').empty?
      system 'clear'
      puts '❌Incorrect input, name couldn\'t be empty!'
      puts 'Type again your name:'
      name = gets.chomp
    elsif name.split('*').all?(/^[a-zA-Z]+$/)
      flag = true
    else
      system 'clear'
      puts '❌Incorrect input, only letters accepted.'
      puts 'Type again your name:'
      name = gets.chomp
    end
  end
  name
end

def display_board(board, player1, player2)
  system 'clear'
  puts board
  puts "#{player1.name} = #{player1.last_move}\n#{player2.name} = #{player2.last_move}"
end

class CheckNum
  def check_number(num)
    num = gets.chomp
    num_i = num.to_i
    flag = false
    until flag
      if (1..9).any?(num_i)
        flag = true
      else
        puts 'Please only enter a number and from 1-9.'
        num = gets.chomp
        num_i = num.to_i
      end
    end
    num_i
  end
  
  def turn(player, board)
    puts "It's #{player}'s turn:"
    num = check_number(num)
    flag = false
    until flag
      if board.any?(num)
        puts "❌Can't choose that number, try again:"
        num = gets.chomp.to_i
      else
        board << num
        flag = true
      end
    end
    num
  end
  
end

def final(winner)
  if winner == 'No Winner'
    puts "It is a TIE! \nGAME OVER☹️!"
  else
    puts "Congratulations #{winner}, you have won🎉🎉🎉!"
  end
end

puts "Welcome to Angel and Zulfizar's TicTacToe Game!👋"
player1 = Player.new(check_name(1))
player2 = Player.new(check_name(2))

system 'clear'
puts "#{player1.name} will play with X and #{player2.name} will play with O"
puts 'Press ENTER to continue'
gets

game = Game.new
board = Board.new
turn = CheckNum.new
until game.flag
  display_board(board.grid, player1, player2)
  player1.make_move(turn.turn(player1.name, board.selections))
  board.insert(player1.last_move, 'X')
  game.flag = true if game.check_winner(player1.name, player1.moves, board)
  break if game.check_winner(player1.name, player1.moves, board)

  display_board(board.grid, player1, player2)
  player2.make_move(turn.turn(player2.name, board.selections))
  board.insert(player2.last_move, 'O')
  game.flag = true if game.check_winner(player2.name, player2.moves, board)
end

display_board(board.grid, player1, player2)
final(game.winner)
