def pig_latin(words)

  original_length = 0
  _________  = 0

  words.___  do _______
    puts "Original word: #{word}"
    ______________ += word.length
    letters = word.chars
    first_letter = letters.shift
    new_word = "#{letters.join}#{first_letter}ay"
    puts "Pig Latin word: #{________}"
    ___________ += new_word.length
  end

  puts "Total original length: #{________________}" 
  puts "Total Pig Latin length: #{new_length}"

end

my_words = ["blocks", "totally", "rock"]
pig_latin(________)

=begin
Things to use:
|word|
yield
original_length
new_length
new_word
shrink
new_length
my_words
new
each
original_length

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