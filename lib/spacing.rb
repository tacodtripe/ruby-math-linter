require 'strscan'
require 'colorize'

class Spacing
  def self.spacing(string, line)
    arr = string.chars
    arr.each_with_index do |n, i|
      next unless (n == '+' || n == '-') && (arr[i - 1] != ' ' || arr[i + 1] != ' ') # rubocop:disable Style/MultipleComparison

      print '-'.colorize(:red)
      print ' Make sure to apply correct space between'.colorize(:white)
      print " #{n}".colorize(:magenta)
      print ' at line'.colorize(:white)
      print " #{line}".colorize(:green)
      puts ''
    end
  end

  def self.correct_trigonometric_space(string, line, trigonometric)
    i = nil
    i = string.index(trigonometric.to_s) + 3 if string.index(trigonometric.to_s)
    if i && string[i] != ' ' # rubocop:disable Style/GuardClause
      print '-'.colorize(:red)
      print " Make sure to put one space between #{trigonometric} and it's argument at line".colorize(:white)
      print " #{line}".colorize(:green)
      puts ''
    end
  end
end
