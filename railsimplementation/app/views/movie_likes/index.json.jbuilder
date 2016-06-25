json.array!(@movie_likes) do |movie_like|
  json.extract! movie_like, :id, :movie, :like
  json.url movie_like_url(movie_like, format: :json)
end
