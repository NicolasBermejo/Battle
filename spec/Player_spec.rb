require './lib/Player.rb'

describe Player do
subject(:Pikachu) { Player.new('Pikachu') }

  describe '#name' do
    it 'returns its name' do
      expect(subject.name).to eq('Pikachu')
    end
  end

  describe '#hp' do
    it 'starts player with 100 hp' do
      expect(subject.hp).to eq(100)
    end
  end
end
