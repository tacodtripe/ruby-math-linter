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
end
