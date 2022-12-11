require 'score_board'

RSpec.describe ScoreBoard do

  context 'when adding a frame to the scoreboard' do
    it 'returns the frame inside frame_list' do
      frame_1 = Frame.new(6,4)
      expect(frame_1.is_spare?).to eq true
      expect(frame_1.is_strike?).to eq false

      board = ScoreBoard.new
      expect(board.frames_list.length).to eq 0
      board.add_frame(frame_1)
      expect(board.frames_list.length).to eq 1
    end
  end


end
