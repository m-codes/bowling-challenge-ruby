require_relative 'lib/frame.rb'
require_relative 'lib/score_board.rb'


frame_1 = Frame.new(6,4)

puts frame_1.is_spare?

puts frame_1.is_strike?
