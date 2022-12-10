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

  context 'when given more then 10 for any roll' do
    it 'fails' do
      expect{Frame.new(11,0)}.to raise_error "Invalid input"
      expect{Frame.new(0,15)}.to raise_error "Invalid input"
      expect{Frame.new(8,8)}.to raise_error "Invalid input"
    end
  end

  context 'when given r1 and r2 as spare' do
    it 'returns frame score' do
      frame_1 = Frame.new(6,4)
      expect(frame_1.frame_score).to eq 10
      expect(frame_1.is_spare?).to eq true
      expect(frame_1.is_strike?).to eq false
    end
  end

  context 'when given r1 and r2 as open' do
    it 'returns frame score' do
      frame_1 = Frame.new(6,2)
      expect(frame_1.frame_score).to eq 8
      expect(frame_1.is_spare?).to eq false
      expect(frame_1.is_strike?).to eq false
    end
  end


end
