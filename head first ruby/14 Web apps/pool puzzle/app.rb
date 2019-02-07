require 'sinatra'

get('/addition') do
    @first = 3
    @second = 5
    @result = @first + @second
    erb :addition
end

get('/multiplication') do
    @first = 2
    @second = 6
    @result = @first * @second
    erb :multiplication
end

=begin
Output for /addition:
3 plus 5 equals 8

Output for /multiplication:
2 times 6 equals 12

Pool for all files:






post




@minus

=end