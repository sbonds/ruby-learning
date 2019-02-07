require 'sinatra'

get('/form') do
    erb :form
end

post('/convert') do
    fahrenheit = params['temperature'].to_f
    celsius = (fahrenheit -32) / 1.8
    format("%0.1f degrees Fahrenheit is %0.1f degrees Celsius.", fahrenheit, celsius)
end

=begin
Expect on /form submitting 75 returns:

75.0 degrees Fahrenheit is 23.9 degrees Celsius.
=end