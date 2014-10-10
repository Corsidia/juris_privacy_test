nomi = []
File.readlines('txt/cognomi.txt').each do |nome|
  nome.downcase!
  nome.chomp!
  nomi << nome unless nome.nil? || nome.empty?
end

File.readlines('txt/nomi.txt').each do |nome|
  nome.downcase!
  nome.chomp!
  nomi << nome unless nome.nil? || nome.empty?
end

words = []
File.readlines('txt/whitelist.txt').each do |word|
  word.downcase!
  word.chomp!
  words << word unless word.nil? || word.empty?
end

puts "words.count = #{words.count}"
puts "nomi.count = #{nomi.count}"
puts "words.count - nomi.count = #{words.count - nomi.count}"
whitelist = words - nomi
puts "whitelist.count = #{whitelist.count}"

whitelist.sort!
File.open("txt/whitelist.txt", 'w') {|f| f.puts(whitelist) }