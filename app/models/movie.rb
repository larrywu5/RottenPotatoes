class Movie < ActiveRecord::Base
  @all_ratings = ['G','PG','PG-13','R']
  def self.all_ratings()
    return @all_ratings
  end
  def self.with_ratings(ratings_list)
    if ratings_list.nil? or ratings_list.empty?
      return Movie.all
    else
      return Movie.where(rating: ratings_list)
    end
  end
end
