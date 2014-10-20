class Whitelist

  def initialize
    @words = []
    File.readlines('txt/whitelist_words_it.txt').each do |word|
      word.chomp!
      @words << word unless word.nil? || word.empty?
    end

    @prefixes = []
    File.readlines('txt/whitelist_suffixes_it.txt').each do |word|
      word.chomp!
      @words << word unless word.nil? || word.empty?
    end

    @suffixes = []
    File.readlines('txt/whitelist_prefixes_it.txt').each do |word|
      word.chomp!
      @words << word unless word.nil? || word.empty?
    end
  end

  attr_reader :words, :suffixes, :prefixes

end