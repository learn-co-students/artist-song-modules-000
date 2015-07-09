class Song
  include Memorable, Paramable
  extend Findable
  
  attr_accessor :name
  attr_reader :artist
  @@songs = []

  def initialize
    super
  end

  def artist=(artist)
    @artist = artist
    artist.add_song(self) unless artist.songs.include? self
  end

  def self.all
    @@songs
  end
end
