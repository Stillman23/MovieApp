class MoviesController < ApplicationController
    def index
        @theatres = Theatre.first
    end
end
