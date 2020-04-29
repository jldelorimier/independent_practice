# You will be creating a method that will take a number of cents and return an array of coins that will be your change. The goal is to return as few coins as possible. Assume that the highest denomination of coins will be a quarter (25 cents). For example: If the method receives 119, the result will be [25, 25, 25, 25, 10, 5, 1, 1, 1, 1]

require 'rspec'
class ChangeMachine
  def change(cents)
    coins = []
    while cents >= 25
      coins << 25
      cents -= 25
    end
    while cents >= 10
      coins << 10
      cents -= 10
    end
    while cents >= 5
      coins << 5
      cents -= 5
    end
    while cents >= 1
      coins << 1
      cents -= 1
    end
    return coins
  end
end

RSpec.describe ChangeMachine do
  describe '#change' do
    it 'should return [1] when given 1' do
      machine = ChangeMachine.new
      expect(machine.change(1)).to eq([1])
    end
  end
  describe '#change' do
    it 'should return [25] when given 25' do
      machine = ChangeMachine.new
      expect(machine.change(25)).to eq([25])
    end
  end
  describe '#change' do
    it 'should return [25, 25] when given 50' do
      machine = ChangeMachine.new
      expect(machine.change(50)).to eq([25, 25])
    end
  end
  describe '#change' do
    it 'should return [25, 25, 25, 25] when given 100' do
      machine = ChangeMachine.new
      expect(machine.change(100)).to eq([25, 25, 25, 25])
    end
  end
  describe '#change' do
    it 'should return [25, 25, 25, 25, 10] when given 110' do
      machine = ChangeMachine.new
      expect(machine.change(110)).to eq([25, 25, 25, 25, 10])
    end
  end
  describe '#change' do
    it 'should return [25, 25, 25, 25, 10, 5] when given 115' do
      machine = ChangeMachine.new
      expect(machine.change(115)).to eq([25, 25, 25, 25, 10, 5])
    end
  end
  describe '#change' do
    it 'should return [25, 25, 25, 25, 10, 5, 1, 1, 1, 1] when given 119' do
      machine = ChangeMachine.new
      expect(machine.change(119)).to eq([25, 25, 25, 25, 10, 5, 1, 1, 1, 1])
    end
  end
  describe '#change' do
    it 'should return [25, 25, 25, 25, 25, 25, 25, 25, 25, 10, 1, 1] when given 237' do
      machine = ChangeMachine.new
      expect(machine.change(237)).to eq([25, 25, 25, 25, 25, 25, 25, 25, 25, 10, 1, 1])
    end
  end
end