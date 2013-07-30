require_relative "../lib/binary_reverser"

describe "binary reverser" do

  it "reverses 13" do
    expect(binary_reverse(13)).to eql(11)
  end

  it "reverses 47" do
    expect(binary_reverse(47)).to eql(61)
  end
end
