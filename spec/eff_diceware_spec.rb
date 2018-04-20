require 'spec_helper'

describe EffDiceware do
  it 'has a version number' do
    expect(EffDiceware::VERSION).not_to be nil
  end

  describe '#generate' do
    it 'should use cast 5 dice per word' do
      expect(SecureRandom).to receive(:random_number).
                               and_call_original.
                               exactly(25).times.
                               with(6)

      EffDiceware.generate(5)
    end

    it 'should default to at least a few words' do
      expect(EffDiceware.generate.split(" ").size).to be >= 5
    end
  end
end
