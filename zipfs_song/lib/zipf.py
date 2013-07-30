#!/usr/bin/python

import sys
from __future__ import division

# while 1:
#     try:
#         line = sys.stdin.readline()
#     except KeyboardInterrupt:
#         break

#     if not line:
#         break

#     print binary_reverser(line)

# class Zipfer:

#     def __init__(self, tracklist):
#         index = 1
#         self.tracklist = {}
#         for track in tracklist:
#             self[track[1]] = Track(track[1], track[0], index)
#             index += 1

#     def best_tracks:
#         tracklist.sort_by { |title, track| track.q }.reverse!.map { |array| array[0] }

class Track:

  def __init__(self, title, play_count, track_number):
    self.title = title
    self.play_count = play_counter
    self.track_number = track_number

  def f(self):
    return self.play_count

  def z(self):
    return 1/self.track_number

  def q(self):
    return self.f()/self.z()
