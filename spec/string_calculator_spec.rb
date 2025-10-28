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
  end
end

