require_relative '../lib/zipf'

describe Zipfer do

  let(:tracklist) {[
      [30, "one"],
      [30, "two"],
      [15, "three"],
      [25, "four"]
    ]}
    
  let(:zipfer) { Zipfer.new(tracklist) }

  it "computes the f value for a song" do
    expect(zipfer["one"].f).to eql(30)
    expect(zipfer["two"].f).to eql(30)
    expect(zipfer["three"].f).to eql(15)
    expect(zipfer["four"].f).to eql(25)
  end

  it "computes the z value for a song" do
    expect(zipfer["one"].z).to eql(1.0)
    expect(zipfer["two"].z).to eql(0.5)
    expect(zipfer["three"].z).to eql(0.3333333333333333)
    expect(zipfer["four"].z).to eql(0.25)
  end

  it "computes the q value for a song" do
    expect(zipfer["one"].q).to eql(30)
    expect(zipfer["two"].q).to eql(60)
    expect(zipfer["three"].q).to eql(45)
    expect(zipfer["four"].q).to eql(100)
  end

  it "sorts the list" do
    expect(zipfer.best_tracks).to eql(["four", "two", "three", "one"])
  end

  let(:tracklist2) {[
      [197812, "re_hash"],
      [78906, "5_4"],
      [189518, "tomorrow_comes_today"],
      [39453, "new_genious"],
      [210492, "clint_eastwood"],
      [26302, "man_research"],
      [22544, "punk"],
      [19727, "sound_check"],
      [17535, "double_bass"],
      [18782, "rock_the_house"],
      [198189, "19_2000"],
      [13151, "latin_simone"],
      [12139, "starshine"],
      [11272, "slow_country"],
      [10521, "m1_a1"]
    ]}

    let(:zipfer2) { Zipfer.new(tracklist2) }

    it "sorts the list" do
      expect(zipfer2.best_tracks).to eql(["19_2000", "clint_eastwood", "tomorrow_comes_today",
        "re_hash", "rock_the_house", "sound_check", "double_bass", "m1_a1", "new_genious", 
        "man_research", "latin_simone", "5_4", "punk", "slow_country", "starshine"])
    end
end
