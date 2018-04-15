class MoviesController < ApplicationController
    def index
        @theatres = Theatre.first
    end

    def show
        @movie = Movie.find(params[:id])
        
        
    end
end
