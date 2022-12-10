require 'frame'

RSpec.describe Frame do

  context 'when r1 + r2 = 10' do
    it 'returns spare' do
      frame_1 = Frame.new(6,4)
      expect(frame_1.is_spare?).to eq true
      expect(frame_1.is_strike?).to eq false
    end
  end

  context 'when r1 = 10' do
    it 'returns strike' do
      frame_1 = Frame.new(10,0)
      expect(frame_1.is_spare?).to eq false
      expect(frame_1.is_strike?).to eq true
    end
  end


end
