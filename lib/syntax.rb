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

  # def self.correct_cos_argument(string, line)
  #   i = nil
  #   if string.index('cos ')
  #     i = string.index('cos ') + 4
  #   elsif string.index('tan ')
  #     i = string.index('tan ') + 4
  #   elsif string.index('cot ')
  #     i = string.index('cot ') + 4
  #   elsif string.index('csc ')
  #     i = string.index('csc ') + 4
  #   elsif string.index('sec ')
  #     i = string.index('sec ') + 4
  #   end
  #     print '-'.colorize(:red)
  #     print ' Make sure to put your trigonometric arguments inside'.colorize(:white)
  #     print ' ()'.colorize(:magenta)
  #     print ' at line'.colorize(:white)
  #     print " #{line}".colorize(:green)
  #     puts ''
  #   end
  # end

  # def self.correct_argument(string, line)
  #   i = nil
  #   if string.index('tan ')
  #     i = string.index('tan ') + 4
  #   end
  #     print '-'.colorize(:red)
  #     print ' Make sure to put your trigonometric arguments inside'.colorize(:white)
  #     print ' ()'.colorize(:magenta)
  #     print ' at line'.colorize(:white)
  #     print " #{line}".colorize(:green)
  #     puts ''
  #   end
  # end

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
end
