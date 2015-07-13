require_relative 'spec_helper.rb'

describe Song do
  before(:each) do
    Song.reset_all
  end

  let!(:song) { Song.new }

  it_behaves_like "song and artist", { name: "Jump Around", converted_name: "jump-around" }

  it "has an artist" do
    song.artist = Artist.new.tap {|a| a.name = "miley"}
    expect(song.artist).to be_a(Artist)
    expect(song.artist.name).to eq("miley")
  end

end
