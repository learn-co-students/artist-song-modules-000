class Artist
  self.extend Memorable::ClassMethods
  include Paramable
  attr_accessor :name, :songs
  @@artists = []

  def self.find_by_name(name)
    @@artists.detect{|a| a.name}
  end

  def initialize
    @@artists << self
    @songs = []
  end

  def self.all
    @@artists
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def add_songs(songs)
    songs.each { |song| add_song(song) }
  end

end

  # def to_param
  #   name.downcase.gsub(' ', '-')
  # end

  # def self.count
  #   @@artists.count
  # end

  # def self.reset_all
  #   self.all.clear
  # end
