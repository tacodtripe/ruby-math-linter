require 'strscan'
require 'colorize'
# rubocop:disable Metrics/CyclomaticComplexity
# rubocop:disable Metrics/PerceivedComplexity
class Arguments
  def self.arguments_closed(string, line) # rubocop:disable Metrics/MethodLength
    i = nil
    if string.index('sin')
      i = string.index('sin') + 4
    elsif string.index('cos')
      i = string.index('cos') + 4
    elsif string.index('tan')
      i = string.index('tan') + 4
    elsif string.index('cot')
      i = string.index('cot') + 4
    elsif string.index('csc')
      i = string.index('csc') + 4
    elsif string.index('sec')
      i = string.index('sec') + 4
    end
    if i && string[i] != '(' # rubocop:disable Style/GuardClause
      print '-'.colorize(:red)
      print ' Make sure to put your trigonometric arguments inside'.colorize(:white)
      print ' ()'.colorize(:magenta)
      print ' at line'.colorize(:white)
      print " #{line}".colorize(:green)
      puts ''
    end
  end
end
# rubocop:enable Metrics/CyclomaticComplexity
# rubocop:enable Metrics/PerceivedComplexity
