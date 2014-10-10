class Whitelist

  def initialize
    @words = []
    File.readlines('txt/privacy_whitelist_it.txt').each do |word|
      word.chomp!
      @words << word unless word.nil? || word.empty?
    end
  end

  attr_reader :words

end