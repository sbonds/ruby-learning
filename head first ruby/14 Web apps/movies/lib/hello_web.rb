# The "gem install sinatra" took about 5 minutes to complete
# with no feedback as it went. Glad I was patient. :-)
require 'sinatra'

get('/hello') do
    'Hello, web!'
end