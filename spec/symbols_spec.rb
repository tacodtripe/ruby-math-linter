require_relative './spec_helper.rb'
require_relative '../lib/symbols.rb'
describe Symbols do
  describe '#missing_symbol_rspec' do
    it "returns an error if there's an unmatched grouping symbol and specifies the line of the file" do
      s = '(2x-5)}'
      line = 4
      stdout = '- Missing ending/closing grouping symbol (), [] or {} at line 4'
      expect(Symbols.missing_symbol_rspec(s, line)).to eql(stdout)
    end
  end
end
