def pig_latin(words)

  original_length = 0
  new_length = 0

  words.each do |word|
    puts "Original word: #{word}"
    original_length += word.length
    letters = word.chars
    first_letter = letters.shift
    new_word = "#{letters.join}#{first_letter}ay"
    puts "Pig Latin word: #{new_word}"
    new_length += new_word.length
  end

  puts "Total original length: #{original_length}" 
  puts "Total Pig Latin length: #{new_length}"

end

my_words = ["blocks", "totally", "rock"]
pig_latin(my_words)

=begin
Things to use:
X |word|
yield
X original_length
X new_length
X new_word
shrink
X new_length
X my_words
new
each
X original_length

Output:
Original word: blocks
Pig latin word: locksbay
Original word: totally
Pig latin word: otallytay
Original word: rock
Pig latin word: ockray
Original total length: 17
Total Pig Latin length: 23
=end