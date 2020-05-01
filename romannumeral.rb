# Write a method that accepts a number as a parameter returns its Roman numeral equivalent. 

class RomanNumeralMachine
  def change(integer)
    characters = ""
    while integer >= 1000
      characters += "M"
      integer-=1000
    end
    while integer >= 500
      characters += "D"
      integer-=500
    end
    while integer >= 100
      characters += "C"
      integer-=100
    end
    while integer >= 50
      characters += "L"
      integer-=50
    end
    while integer >= 10
      characters += "X"
      integer-=10
    end
    while integer >= 5
      characters += "V"
      integer-=5
    end
    while integer >= 1
      characters += "I"
      integer-=1
    end
    return characters
  end
end

require 'rspec'
RSpec.describe RomanNumeralMachine do
  describe '#thousand' do
    it 'should return "M" when given 1000' do
      machine = RomanNumeralMachine.new
      expect(machine.change(1000)).to eq("M")
    end
    it 'should return "MM" when given 2000' do
      machine = RomanNumeralMachine.new
      expect(machine.change(2000)).to eq("MM")
    end
  end
  describe '#five_hundred' do
    it 'should return "D" when given 500' do
      machine = RomanNumeralMachine.new
      expect(machine.change(500)).to eq("D")
    end
  end
  describe '#hundred' do
    it 'should return "C" when given 100' do
      machine = RomanNumeralMachine.new
      expect(machine.change(100)).to eq("C")
    end
  end
  describe '#fifty' do
    it 'should return "L" when given 50' do
      machine = RomanNumeralMachine.new
      expect(machine.change(50)).to eq("L")
    end
    it 'should return "MMMDL" when given 3550' do
      machine = RomanNumeralMachine.new
      expect(machine.change(3550)).to eq("MMMDL")
    end
  end
  describe '#ten' do
    it 'should return "X" when given 10' do
      machine = RomanNumeralMachine.new
      expect(machine.change(10)).to eq("X")
    end
    it 'should return "MMMDLX" when given 3560' do
      machine = RomanNumeralMachine.new
      expect(machine.change(3560)).to eq("MMMDLX")
    end
  end
  describe '#five' do
    it 'should return "V" when given 5' do
      machine = RomanNumeralMachine.new
      expect(machine.change(5)).to eq("V")
    end
    it 'should return "MMMDLXV" when given 3565' do
      machine = RomanNumeralMachine.new
      expect(machine.change(3565)).to eq("MMMDLXV")
    end
  end
  describe '#one' do
    it 'should return "I" when given 1' do
      machine = RomanNumeralMachine.new
      expect(machine.change(4)).to eq("IIII")
    end
    it 'should return "MMMDLXVI" when given 356^' do
      machine = RomanNumeralMachine.new
      expect(machine.change(3566)).to eq("MMMDLXVI")
    end
  end
end