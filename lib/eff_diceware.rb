require "pathname"
require "securerandom"

require "eff_diceware/version"

module EffDiceware
  class << self
    def generate(n = 5)
      raise ArgumentError, "n must be greater than 0" unless n > 0

      wordlist do |list|
        words = n.times.map do
          key = 5.times.map{ roll }.join
          list.grep(/^#{key}/)[0].split("\t")[1]
        end

        words.join(" ")
      end
    end

    def roll
      1 + SecureRandom.random_number(6)
    end

    private

    def wordlist
      gem_root = File.expand_path(File.dirname(File.dirname(__FILE__)))
      wordlist = Pathname.new(gem_root).join("eff_large_wordlist.txt")
      yield File.readlines(wordlist).map(&:chomp)
    end
  end
end
