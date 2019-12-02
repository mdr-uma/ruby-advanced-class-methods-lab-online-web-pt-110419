
require 'pry'
class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

  def self.create
    song = self.new
    song.save
    song
  end

  def self.new_by_name(string_name_of_the_song)
    song = self.new
    song.name = string_name_of_the_song
    song
  end

  def self.create_by_name(string_name_of_the_song)
    song = self.new
    song.name = string_name_of_the_song
    # binding.pry
    song.save
    song
  end

  def self.find_by_name(string_name_of_the_song)
    self.all.find {|s| s.name == string_name_of_the_song}
  end

  def self.find_or_create_by_name(string_name_of_the_song)
    result = self.find_by_name(string_name_of_the_song)
    if result
      result
    else
      self.create_by_name(string_name_of_the_song)
    end
  end

end
