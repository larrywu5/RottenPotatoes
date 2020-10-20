class Movie < ActiveRecord::Base
  @all_ratings = ['G','PG','PG-13','R']
  def self.all_ratings()
    return @all_ratings
  end
  def self.with_ratings(ratings_list)
  # if ratings_list is an array such as ['G', 'PG', 'R'], retrieve all
  #  movies with those ratings
  # if ratings_list is nil, retrieve ALL movies
    if ratings_list.nil?
      return Movie.all
    else
      return Movie.where(rating: ratings_list)
    end
  end
  def self.titles()
    return Movie.all.order("title")
  end
  def self.releases()
    return Movie.all.order("release_date")
  end
end
