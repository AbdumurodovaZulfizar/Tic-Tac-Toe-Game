require_relative 'spec_helper'
require_relative '../lib/game'
require_relative '../lib/player'
require_relative '../lib/board'
RSpec.describe Game do
  let(:player1) { Player.new('omina')}
  let(:player2) { Player.new('fotima')}
  let(:games) { Game.new()}

  describe '#initialize' do
    it 'creates winner variable' do
      expect(games.winner).to eql(nil)
    end
    it 'creates win variable' do
      expect(games.win).to eql(false)
    end
  end
end