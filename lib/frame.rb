class Frame

  attr_accessor :r1, :r2, :frame_score

  def initialize(r1, r2)

    if r1 > 10 || r2 > 10 || r1 + r2 > 10
      fail "Invalid input"
    end

    @r1 = r1
    @r2 = r2
    @frame_score = @r1 + @r2

  end

  def is_strike?
    @r1 == 10 ? true : false
  end

  def is_spare?
    !is_strike? && @r1 + @r2 == 10 ? true : false
  end

end
