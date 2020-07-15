require_relative '../lib/spacing.rb'
require_relative '../lib/symbols.rb'
require_relative '../lib/syntax.rb'
require 'strscan'

file = '../test.txt'
line_number = 1
File.readlines(file).each do |line|
  if line[0] == '#'
    line_number += 1
    next
  end
  Spacing.spacing(line, line_number)
  Spacing.correct_trigonometric_space(line, line_number, 'cos')
  Spacing.correct_trigonometric_space(line, line_number, 'sin')
  Spacing.correct_trigonometric_space(line, line_number, 'tan')
  Spacing.correct_trigonometric_space(line, line_number, 'cot')
  Spacing.correct_trigonometric_space(line, line_number, 'csc')
  Spacing.correct_trigonometric_space(line, line_number, 'sec')
  Symbols.missing_symbol(line, line_number)
  Syntax.correct_trigonometric_argument(line, line_number, 'cos')
  Syntax.correct_trigonometric_argument(line, line_number, 'sin')
  Syntax.correct_trigonometric_argument(line, line_number, 'tan')
  Syntax.correct_trigonometric_argument(line, line_number, 'cot')
  Syntax.correct_trigonometric_argument(line, line_number, 'csc')
  Syntax.correct_trigonometric_argument(line, line_number, 'sec')
  Syntax.correct_division(line, line_number)
  line_number += 1
end
