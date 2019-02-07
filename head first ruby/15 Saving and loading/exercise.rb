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

......http://localhost:4567/hello

......http://localhost:4567/ciao

......http://localhost:4567/goodbye

=end