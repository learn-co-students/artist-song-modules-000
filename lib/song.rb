class Song
  self.extend Memorable::ClassMethods
  include Paramable
  attr_accessor :name, :artist
  @@songs = []

  def initialize
    @@songs << self
  end

  def self.find_by_name(name)
    @@songs.detect{|a| a.name}
  end

  def self.all
    @@songs
  end
  
end

  # def to_param
  #   name.downcase.gsub(' ', '-')
  # end

  # def self.reset_all
  #   @@songs.clear
  # end

  # def self.count
  #   self.all.count
  # end
