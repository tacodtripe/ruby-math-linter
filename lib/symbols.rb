require 'strscan'
require 'colorize'

class Symbols
  # rubocop:disable Metrics/CyclomaticComplexity
  # rubocop:disable Metrics/PerceivedComplexity
  def self.missing_symbol(string, line) # rubocop:disable Metrics/MethodLength
    arr = string.chars
    opening = 0
    ending = 0
    arr.each_with_index do |n, _i|
      if n == '[' || # rubocop:disable Style/MultipleComparison
         n == '(' ||
         n == '{'
        opening += 1
      elsif n == ']' || # rubocop:disable Style/MultipleComparison
            n == ')' ||
            n == '}'
        ending += 1
      end
    end
    if opening != ending # rubocop:disable Style/GuardClause
      print '-'.colorize(:red)
      print ' Missing ending/closing grouping symbol'.colorize(:white)
      print ' (), [] or {}'.colorize(:yellow)
      print ' at line'.colorize(:white)
      print " #{line}".colorize(:green)
      puts ''
    end
  end
  # rubocop:enable Metrics/CyclomaticComplexity
  # rubocop:enable Metrics/PerceivedComplexity
end
