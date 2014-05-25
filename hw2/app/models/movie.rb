class Movie < ActiveRecord::Base
  attr_accessible :title, :rating, :description, :release_date
  def self.movie_ratings

    # If not previously cached then
    if !defined? @@rating_keys then

      # Create a static cache object
      @@rating_keys = {}
      # get unique movie objects
      self.select(:rating).uniq.order(:rating).each do |movie|
        # capture the unique rating values
        @@rating_keys[movie.rating] = true
      end
    end

    return @@rating_keys.keys 
    
  end

end

