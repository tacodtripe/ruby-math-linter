require 'strscan'
require 'colorize'
class Syntax
  def self.correct_trigonometric_argument(string, line, trigonometric)
    i = nil
    i = string.index("#{trigonometric} ") + 4 if string.index("#{trigonometric} ")
    if i && string[i] != '(' # rubocop:disable Style/GuardClause
      print '-'.colorize(:red)
      print " Make sure to put your #{trigonometric} arguments inside".colorize(:white)
      print ' ()'.colorize(:magenta)
      print ' at line'.colorize(:white)
      print " #{line}".colorize(:green)
      puts ''
    end
  end

  # Removed colorize gem due to rspec errors.
  def self.correct_trigonometric_argument_rspec(string, line, trigonometric)
    i = nil
    i = string.index("#{trigonometric} ") + 4 if string.index("#{trigonometric} ")
    return "- Make sure to put your #{trigonometric} arguments inside () at line #{line}" if i && string[i] != '('
  end

  def self.correct_division(string, line)
    arr = string.chars
    arr.each_with_index do |n, i|
      next unless (n == '/') && (arr[i - 2] != ')' || arr[i + 2] != '(')

      print '- Warning:'.colorize(:yellow)
      print ' Make sure to use parentheses to wrap the numerator and the denominator at line'.colorize(:white)
      print " #{line}".colorize(:green)
      puts ''
    end
  end

  # Removed colorize gem due to rspec errors.
  def self.correct_division_rspec(string, line)
    arr = string.chars
    arr.each_with_index do |n, i|
      next unless (n == '/') && (arr[i - 2] != ')' || arr[i + 2] != '(')

      return "- Warning: Make sure to use parentheses to wrap the numerator and the denominator at line #{line}"
    end
  end
end
