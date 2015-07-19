require "concerns/memorable"
require "concerns/findable"
require "concerns/paramable"

class Artist
  attr_accessor :name
  attr_reader :songs

  include Memorable
  extend Memorable::ClassMethods
  include Paramable
  extend Findable

  def initialize
    super
    @songs = []
  end

  # binding.pry

  def add_song(song)
    @songs << song
  end

  def add_songs(songs)
    songs.each { |song| add_song(song) }
  end

end