require 'pry'
require_relative '../lib/memorable.rb'
require_relative '../lib/methods.rb'

class Song
  attr_accessor :name
  attr_reader :artist

  extend Memorable
  include Methods

  @@songs = []

  def initialize
    @@songs << self
  end

  def artist=(artist)
    @artist = artist
  end

  def self.all
    @@songs
  end
end
