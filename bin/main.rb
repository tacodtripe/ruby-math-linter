require_relative '../lib/spacing.rb'
require_relative '../lib/symbols.rb'
require_relative '../lib/arguments.rb'

file = '../test.txt'
line_number = 1
File.readlines(file).each do |line|
  if line[0] == '#'
    line_number += 1
    next
  end

  Spacing.spacing(line, line_number)
  Symbols.missing_symbol(line, line_number)
  Arguments.arguments_closed(line, line_number)
  line_number += 1
end
