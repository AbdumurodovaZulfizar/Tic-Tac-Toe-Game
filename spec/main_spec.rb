require_relative '../bin/main'
require_relative 'spec_helper'
require 'stringio'
RSpec.describe CheckNum do
  let(:checker) { CheckNum.new}
  describe '#check_number' do
    let(:input) { StringIO.new("0\n") }
    it "returns the player's column choice" do
      expect(checker.check_number(input)).to eq(0)
  end
  end
end