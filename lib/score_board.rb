require 'frame'

class ScoreBoard

  attr_accessor :frames_list

  def initialize
    @frames_list = []
    @board_frame_score = []
  end

  def add_frame(frame)
    @frames_list << frame
  end

  def get_score
    score = 0
    @frames_list.each_with_index do |frame_n, frame_index|
      frame_n1 = @frame_list[frame_index + 1]
      frame_n2 = @frame_list[frame_index + 2]

      if frame_index < 9

      end




    end


  end



end
