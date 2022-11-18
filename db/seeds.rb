require 'open-uri'
require 'json'

Movie.destroy_all

api_url = "https://tmdb.lewagon.com/movie/top_rated"
top_rated = JSON.parse(URI.open(api_url).read)["results"]

top_rated.each do |movie|
  Movie.create(title: movie["title"], overview: movie["overview"], poster_url: "https://image.tmdb.org/t/p/original/#{movie["poster_path"]}", rating: movie["vote_average"])
end


