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
end
