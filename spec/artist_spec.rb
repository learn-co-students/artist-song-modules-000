require_relative './spec_helper'
require 'pry'

describe Artist do
  before(:each) do
    Artist.reset_all
  end

  # What's the difference between let! and let?
  # Why do we need it? Change it to the non ! version
  # and see what test suddenly fails.
  # http://betterspecs.org/#let
  let!(:artist){Artist.new}

  it_behaves_like "song and artist", { name: "Miley Cyrus", converted_name: "miley-cyrus" }

  describe "with songs" do
    let(:song){Song.new}

    it "can have a song added" do
      artist.add_song(song)
      expect(artist.songs).to include(song)
    end

    it "knows how many songs it has" do
      artist.add_songs([song, Song.new])
      expect(artist.songs.count).to eq(2)
    end
  end

end
