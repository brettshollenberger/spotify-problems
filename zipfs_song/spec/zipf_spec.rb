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
    expect(zipfer.f("one")).to eql(30)
    expect(zipfer.f("two")).to eql(30)
    expect(zipfer.f("three")).to eql(15)
    expect(zipfer.f("four")).to eql(25)
  end

  it "computes the z value for a song" do
    expect(zipfer.z("one")).to eql(1.0)
    expect(zipfer.z("two")).to eql(0.5)
    expect(zipfer.z("three")).to eql(0.3333333333333333)
    expect(zipfer.z("four")).to eql(0.25)
  end

  it "computes the q value for a song" do
    expect(zipfer.q("one")).to eql(30.0)
    expect(zipfer.q("two")).to eql(60.0)
    expect(zipfer.q("three")).to eql(45.0)
    expect(zipfer.q("four")).to eql(100.0)
  end
end
