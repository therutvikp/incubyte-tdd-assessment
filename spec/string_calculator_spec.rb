require_relative '../lib/string_calculator'
require_relative 'spec_helper'

RSpec.describe StringCalculator do
  let(:calculator) { StringCalculator.new }

  describe '#add' do
    it 'returns 0 for empty string' do
      expect(calculator.add('')).to eq(0)
    end

    it 'returns the number itself for single number' do
      expect(calculator.add('1')).to eq(1)
    end

    it 'returns sum for two comma-separated numbers' do
      expect(calculator.add('1,5')).to eq(6)
    end

    it 'returns sum for multiple comma-separated numbers' do
      expect(calculator.add('1,2,3,4,5')).to eq(15)
    end

    it 'returns sum for numbers separated by newlines' do
      expect(calculator.add("1\n2,3")).to eq(6)
    end

    it 'returns sum for numbers with custom delimiter' do
      expect(calculator.add("//;\n1;2")).to eq(3)
    end

    it 'raises exception when given negative number' do
      expect { calculator.add('-1,2') }.to raise_error(ArgumentError, 'negative numbers not allowed -1')
    end

    it 'raises exception showing all negative numbers' do
      expect { calculator.add('-1,-2,3') }.to raise_error(ArgumentError, 'negative numbers not allowed -1,-2')
    end

    it 'ignores numbers bigger than 1000' do
      expect(calculator.add('2,1001')).to eq(2)
    end

    it 'only adds numbers up to 1000' do
      expect(calculator.add('1,1000,1001,2')).to eq(1003)
    end

    it 'handles multi-character delimiters in brackets' do
      expect(calculator.add("//[***]\n1***2***3")).to eq(6)
    end

    it 'handles single char delimiter in brackets' do
      expect(calculator.add("//[*]\n1*2*3")).to eq(6)
    end

    it 'handles multiple single char delimiters' do
      expect(calculator.add("//[*][%]\n1*2%3")).to eq(6)
    end

    it 'handles multiple multi-char delimiters' do
      expect(calculator.add("//[***][%%%]\n1***2%%%3")).to eq(6)
    end
  end
end

