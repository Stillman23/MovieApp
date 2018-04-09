class StaticController < ApplicationController
    def BuyMovietickets
      @movies = Movie.all
    end
  
    def comingsoon
    end
  
    def contact
    end
  end
