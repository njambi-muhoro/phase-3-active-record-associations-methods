class Genre < ActiveRecord::Base
  has_many :songs
  has_many :artists, through: :songs

  def song_count
    # return the number of songs in a genre
    self.songs.count
  end

  def artist_count
    # return the number of artists associated with the genre
    self.artists.count
  end

  def all_artist_names
    # return an array of strings containing every musician's name
    songs.map { |song| song.artist.name }

    # self.artists.pluck(:name)
#     pluck is a method in Rails that allows you to retrieve a specific 
#     column or attribute from a collection of ActiveRecord objects.

# For example, if you have a collection of User objects and you only
#  want to retrieve the name attribute of each user, you can use pluck like this:
  end
end
