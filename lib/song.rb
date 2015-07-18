require "concerns/memorable"
require "concerns/findable"
require "concerns/paramable"

class Song
  attr_accessor :name
  attr_reader :artist

  include Memorable
  extend Memorable::ClassMethods
  include Paramable
  extend Findable

  def initialize
    super
  end

  def artist=(artist)
    @artist = artist
    artist.add_song(self)
  end

end
