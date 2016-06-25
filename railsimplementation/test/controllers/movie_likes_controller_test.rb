require 'test_helper'

class MovieLikesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @movie_like = movie_likes(:one)
  end

  test "should get index" do
    get movie_likes_url
    assert_response :success
  end

  test "should get new" do
    get new_movie_like_url
    assert_response :success
  end

  test "should create movie_like" do
    assert_difference('MovieLike.count') do
      post movie_likes_url, params: { movie_like: { like: @movie_like.like, movie: @movie_like.movie } }
    end

    assert_redirected_to movie_like_path(MovieLike.last)
  end

  test "should show movie_like" do
    get movie_like_url(@movie_like)
    assert_response :success
  end

  test "should get edit" do
    get edit_movie_like_url(@movie_like)
    assert_response :success
  end

  test "should update movie_like" do
    patch movie_like_url(@movie_like), params: { movie_like: { like: @movie_like.like, movie: @movie_like.movie } }
    assert_redirected_to movie_like_path(@movie_like)
  end

  test "should destroy movie_like" do
    assert_difference('MovieLike.count', -1) do
      delete movie_like_url(@movie_like)
    end

    assert_redirected_to movie_likes_path
  end
end
