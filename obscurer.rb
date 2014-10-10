module Obscurer
  require_relative 'whitelist'
  # see http://rubular.com/r/mrNTXICP9s
  # [A-Z][a-zA-Z]{2,25}(\s|\s[A-Z]\.\s)[A-Z][a-zA-Z]{3,25}

  whitelist = Whitelist.new

  puts whitelist.words

end