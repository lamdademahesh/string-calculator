require_relative 'string_calculator'

RSpec.describe StringCalculator do 
  describe '.add' do 
    context 'when given a empty string' do 
      it 'returns 0' do 
        expect(StringCalculator.add("")).to eq(0)
      end
    end

    context 'when given a single number' do
      it 'returns the number itself' do
        expect(StringCalculator.add("1")).to eq(1)
      end
    end

    context 'when given multiple comma-separated numbers' do
      it 'returns the sum of the numbers' do
        expect(StringCalculator.add("1,2,3")).to eq(6)
      end
    end

    context 'when numbers are separated by new lines' do
      it 'allows new lines between numbers' do
        expect(StringCalculator.add("1\n2,3")).to eq(6)
      end
    end
  end
end