class Zipfer < Hash

  attr_accessor :tracklist

  def initialize(tracklist)
    index = 1
    tracklist.each do |track| 
      self[track[1]] = [track[0], index]
      index += 1
    end
  end

  def f(track)
    self[track][0]
  end

  def z(track)
    1 / self[track][1]
  end
end
