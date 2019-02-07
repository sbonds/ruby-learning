# This class allows you to do things with strings split on
# spaces.
class WordSplitter
    include Enumerable

    attr_accessor :string

    # Run the block passed in on each group of characters
    # separated by a single space.
    def each
        string.split(" ").each do |word|
            yield word
        end
    end
end

=begin
>> require "word_splitter"
require "word_splitter"
=> true
>> splitter = WordSplitter.new
splitter = WordSplitter.new
=> #<WordSplitter:0x00000000034d4768>
>> splitter.string = "salad beefcake corn pasta beef beefy"
splitter.string = "salad beefcake corn pasta beef beefy"
=> "salad beefcake corn pasta beef beefy"
>> splitter.find_all { |word| word.include?("beef") }
splitter.find_all { |word| word.include?("beef") }
=> ["beefcake", "beef", "beefy"]
>> splitter.reject { |word| word.include?("beef") }
splitter.reject { |word| word.include?("beef") }
=> ["salad", "corn", "pasta"]
>> splitter.map { |word| word.capitalize }
splitter.map { |word| word.capitalize }
=> ["Salad", "Beefcake", "Corn", "Pasta", "Beef", "Beefy"]
>> splitter.count
splitter.count
=> 6
>> splitter.find { |word| word.include?("beef") }
splitter.find { |word| word.include?("beef") }
=> "beefcake"
>> splitter.first
splitter.first
=> "salad"
>> splitter.group_by { |word| word.include?("beef") }
splitter.group_by { |word| word.include?("beef") }
=> {false=>["salad", "corn", "pasta"], true=>["beefcake", "beef", "beefy"]}
>> splitter.max_by { |word| word.length }
splitter.max_by { |word| word.length }
=> "beefcake"
>> splitter.to_a
splitter.to_a
=> ["salad", "beefcake", "corn", "pasta", "beef", "beefy"]
>> exit
exit
=end