require 'score_board'

RSpec.describe ScoreBoard do

  context 'when adding a frame to the scoreboard' do
    it 'returns the frame inside frame_list' do
      frame_1 = Frame.new(6,4)
      board = ScoreBoard.new
      expect(board.frames_list.length).to eq 0
      board.add_frame(frame_1)
      expect(board.frames_list.length).to eq 1
    end
  end

  context 'when adding a frame to the scoreboard' do
    it 'returns the score of the frames inside frame_list' do
      frame_1 = Frame.new(6,2)
      board = ScoreBoard.new
      board.add_frame(frame_1)
      expect(board.get_score).to eq 8
    end
  end

  context 'when adding multiple frames to the scoreboard' do
    it 'returns the score of the frames inside frame_list' do
      frame_1 = Frame.new(5,5)
      frame_2 = Frame.new(4,5)
      expect(frame_1.is_spare?).to eq true
      expect(frame_2.is_open?).to eq true

      board = ScoreBoard.new
      board.add_frame(frame_1)
      board.add_frame(frame_2)
      expect(board.get_score).to eq 23
    end
  end


  context 'when given a full scoreboard' do
    it 'returns the correct score' do
      frame_1 = Frame.new(5,5)
      frame_2 = Frame.new(4,5)
      frame_3 = Frame.new(8,2)
      frame_4 = Frame.new(10,0)
      frame_5 = Frame.new(0,10)
      frame_6 = Frame.new(10,0)
      frame_7 = Frame.new(6,2)
      frame_8 = Frame.new(10,0)
      frame_9 = Frame.new(4,6)
      # frame_10 = Frame.new(10,10)

      board = ScoreBoard.new
      board.add_frame(frame_1)
      board.add_frame(frame_2)
      board.add_frame(frame_3)
      board.add_frame(frame_4)
      board.add_frame(frame_5)
      board.add_frame(frame_6)
      board.add_frame(frame_7)
      board.add_frame(frame_8)
      board.add_frame(frame_9)
      # board.add_frame(frame_10)

      expect(board.get_score).to eq 149
    end
  end


end
