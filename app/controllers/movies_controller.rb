class MoviesController < ApplicationController
    def index
        @movies = []
        Theatre.all.map { |theatre| @movies.push(theatre.movies) }
        @movies = @movies.flatten
    end

    def show
        @movie = Movie.find(params[:id])
    end
end
