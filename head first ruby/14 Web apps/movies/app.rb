require 'sinatra'
require 'movie'
require 'movie_store'

store = MovieStore.new('movies.yaml')

get('/movies') do
    @movies = store.all
    erb :index
end

get('/movies/new') do
    erb :new
end

post('/movies/create') do
    @movie = Movie.new
    @movie.title = params['title']
    @movie.director = params['director']
    @movie.year = params['year']
    store.save(@movie)
    redirect '/movies/new'
end

get('/movies/:id') do
    "Received a request for movie ID: #{params['id']}"
end