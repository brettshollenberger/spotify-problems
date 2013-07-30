require_relative '../lib/zipf'

describe Zipfer do

  let(:tracklist) {[
      [30, "one"],
      [30, "two"],
      [15, "three"],
      [25, "four"]
    ]}
    
  let(:zipfer) { Zipfer.new(tracklist) }

  it "computes the z value for a song" do
    expect(zipfer.z("one")).to eql(1)
    expect(zipfer.z("two")).to eql(1/2)
    expect(zipfer.z("three")).to eql(1/3)
    expect(zipfer.z("four")).to eql(1/4)
  end
end
