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
  end
end

