require_relative './spec_helper.rb'
require_relative '../lib/syntax.rb'
describe Syntax do
  describe '#correct_trigonometric_argument_rspec' do
    it 'returns an error if the argument of a trignometric function is not properly enclosed' do
      s = '1 - cos 2x - 5'
      line = 4
      stdout = '- Make sure to put your cos arguments inside () at line 4'
      expect(Syntax.correct_trigonometric_argument_rspec(s, line, 'cos')).to eql(stdout)
    end
  end

  describe '#correct_division_rspec' do
    it 'returns an error if the numerator and denominator are not properly enclosed' do
      s = '1 - cos 2x - 5 / 2x - 1'
      line = 4
      stdout = '- Warning: Make sure to use parentheses to wrap the numerator and the denominator at line 4'
      expect(Syntax.correct_division_rspec(s, line)).to eql(stdout)
    end
  end
end
