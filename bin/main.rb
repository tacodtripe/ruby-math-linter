require_relative '../lib/reader.rb'
require_relative '../lib/symbols.rb'

file = '../test.txt'
line_number = 1
File.readlines(file).each do |line|
  Spacing.spacing(line, line_number)
  Symbols.missing_symbol(line, line_number)
  line_number += 1
end
