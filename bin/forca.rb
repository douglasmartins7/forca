#!/usr/bin/env ruby

$:.unshift File.join(File.dirname(__FILE__),"..","lib")

require 'game'

game = Game.new
game.start


