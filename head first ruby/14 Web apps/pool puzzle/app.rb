require ___

___('/addition') do
    @first = 3
    ___ = 5
    @result = ____ + @second
    erb ____
end

get(___) do
    ___ = 2
    @second = 6
    ____ = @first * @second
    ___ :multiplication
end

=begin
Output for /addition:
3 plus 5 equals 8

Output for /multiplication:
2 times 6 equals 12

Pool for all files:
@second
@second
'sinatra'
get
erb
@first
post
'/multiplication'
@result
@first
@result
@minus
:addition
=end