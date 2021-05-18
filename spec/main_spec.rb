require_relative 'spec_helper'
require_relative '../lib/player'
require_relative '../lib/board'
require_relative '../lib/game'
require_relative '../bin/main'
require 'stringio'


let(:games) { Game.new }
let(:board) { Board.new }

describe '#check_name' do
  let(:input1) { StringIO.new('omina')}
  let(:input2) { StringIO.new('')}
  let(:input3) { StringIO.new('zulfizar2002')}
  it 'returns the player name according to his number' do
    $stdin = input1
    expect(check_name(1)).to output('Please enter player number 1\'s name:').to_stdout($stdin)
  end
end