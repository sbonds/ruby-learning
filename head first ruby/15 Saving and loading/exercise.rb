require 'sinatra'

get('/hello') do
  "Hi there!"
end

get('/:greeting') do
  greeting = params['greeting']
  "Sinatra says #{greeting}!"
end

get('/goodbye') do
  "See you later!"
end

=begin
What output is expected for these URLs:

Hi there! http://localhost:4567/hello

Sinatra says ciao http://localhost:4567/ciao

Sinatra says goodbye http://localhost:4567/goodbye
(first match on :greeting)

=end