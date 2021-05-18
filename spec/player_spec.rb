require_relative 'spec_helper'
require_relative '../lib/player'

RSpec.describe  Player do
  let(:player1) { Player.new('omina')}
  let(:player2) { Player.new('fotima')}

  describe '#initialize' do
    it 'creates player name in correct format' do
      expect(player1.name).to eql('Omina')
    end
    it 'creates moves variable' do
      expect(player1.moves).to eql([])
    end
  end
  describe '#make_move' do
    it 'gathers moves' do
      expect(player1.make_move(1)).to eql([1])
    end
  end
end