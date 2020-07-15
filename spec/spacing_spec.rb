require_relative './spec_helper.rb'
require_relative '../lib/spacing.rb'

# rubocop:disable Layout/LineLength
describe Spacing do
  describe '#spacing_rpsec' do
    it "returns an error if there's missing space befor or after the '+' or '-' symbols and especify the line of the file" do
      s = '2x-5'
      line = 4
      stdout = '- Make sure to apply correct space between - at line 4'
      expect(Spacing.spacing_rspec(s, line)).to eql(stdout)
    end
  end

  describe '#correct_trigonometric_space_rspec' do
    it "returns an error if there's missing space between a trigonometric function and it's argument and especify the line of the file" do
      s = '2x-5cos2x'
      line = 4
      stdout = "- Make sure to put one space between cos and it's argument at line 4"
      expect(Spacing.correct_trigonometric_space_rspec(s, line, 'cos')).to eql(stdout)
    end
  end
end
# rubocop:enable Layout/LineLength
