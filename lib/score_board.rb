require 'frame'

class ScoreBoard

  attr_accessor :frames_list

  def initialize
    @frames_list = []
    @frames_score = []
  end

  def add_frame(frame)
    @frames_list << frame
  end

  def get_score
    score = 0
    # frame_n is our current frame
    @frames_list.each_with_index do |frame_n, frame_index|
      # defines the next frames for the strike and spare logic
      frame_n1 = @frames_list[frame_index + 1]
      frame_n2 = @frames_list[frame_index + 2]

      if frame_index < 9
        # if the player strikes in the current frame and also strikes in the next frame
        # a strike only happens on r1 so that's not a problem
        if frame_n.is_strike?
          if frame_n1.is_strike?
            score += frame_n.frame_score + frame_n1.roll_1 + frame_n2.roll_1
            next
          else
            # if the player strikes in the  current frame but does not strike in the next frame
            score += frame_n.frame_score + frame_n1.roll_1 + frame_n1.roll_2
            next
          end
        end

        # if the player spares in the current frame
        if frame_n.is_spare?
          score += frame_n.frame_score + frame_n1.roll_1l

          next
        end

        if frame_n.is_open?
          score += frame_n.frame_score
        end

      end # if < 9 end
    end # each_with_index end
    return score
  end # get_score end
end # class end
