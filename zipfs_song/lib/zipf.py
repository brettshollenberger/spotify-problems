#!/usr/bin/python

from __future__ import division
import sys
import re

class Zipfer:

    def __init__(self, tracklist):
        self.index = 1
        self.tracklist = {}
        for track in tracklist:
            self.tracklist[track[1]] = Track(track[1], int(track[0]), self.index)
            self.index += 1

    def best_tracks(self, how_many):
        return [(x[0]) for x in sorted(self.tracklist.items(), key=lambda x:x[1].q())][::-1][0:how_many]


class Track:

  def __init__(self, title, play_count, track_number):
    self.title = title
    self.play_count = play_count
    self.track_number = track_number

  def f(self):
    return self.play_count

  def z(self):
    return 1/self.track_number

  def q(self):
    return self.f()/self.z()

def line_reader():
    first_line = sys.stdin.readline()
    if not first_line:
        return
    inputs = re.findall(r'\d+', first_line)
    n = int(inputs[0])
    m = int(inputs[1])
    tracklist = []
    for num in range(n):
        tracklist.append(sys.stdin.readline().split())
    z = Zipfer(tracklist)
    print z.best_tracks(m)
    line_reader()

line_reader()
