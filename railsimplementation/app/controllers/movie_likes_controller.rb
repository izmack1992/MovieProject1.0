class MovieLikesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_movie_like, only: [:show, :edit, :update, :destroy]

  # GET /movie_likes
  # GET /movie_likes.json
  def index
    @movie_likes = MovieLike.all
  end

  # GET /movie_likes/1
  # GET /movie_likes/1.json
  def show
  end

  # GET /movie_likes/new
  def new
    @movie_like = MovieLike.new
  end

  # GET /movie_likes/1/edit
  def edit
  end

  # POST /movie_likes
  # POST /movie_likes.json
  def create
    @movie_like = MovieLike.new(movie_like_params)

    respond_to do |format|
      if @movie_like.save
        format.html { redirect_to @movie_like, notice: 'Movie like was successfully created.' }
        format.json { render :show, status: :created, location: @movie_like }
      else
        format.html { render :new }
        format.json { render json: @movie_like.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /movie_likes/1
  # PATCH/PUT /movie_likes/1.json
  def update
    respond_to do |format|
      if @movie_like.update(movie_like_params)
        format.html { redirect_to @movie_like, notice: 'Movie like was successfully updated.' }
        format.json { render :show, status: :ok, location: @movie_like }
      else
        format.html { render :edit }
        format.json { render json: @movie_like.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /movie_likes/1
  # DELETE /movie_likes/1.json
  def destroy
    @movie_like.destroy
    respond_to do |format|
      format.html { redirect_to movie_likes_url, notice: 'Movie like was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_movie_like
      @movie_like = MovieLike.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def movie_like_params
      params.require(:movie_like).permit(:movie, :like)
    end
end
