#!/usr/bin/env ruby

class Zipfer < Hash

  attr_accessor :tracklist

  def initialize(tracklist)
    index = 1
    tracklist.each do |track| 
      self[track[1]] = Track.new(track[1], track[0], index)
      index += 1
    end
  end

  def best_tracks
    self.sort_by { |title, track| track.q }.reverse!.map { |array| array[0] }
  end
end

class Track

  attr_accessor :title, :play_count, :track_number

  def initialize(title, play_count, track_number)
    @title = title
    @play_count = play_count
    @track_number = track_number
  end

  def f
    @play_count
  end

  def z
    1.0 / @track_number
  end

  def q
    (f / z).to_i
  end
end

