class Frame

  attr_accessor :roll_1, :roll_2

  def initialize(roll_1, roll_2)
    @roll_1 = roll_1
    @roll_2 = roll_2
  end

  def is_strike?
    @roll_1 == 10 ? true : false
  end

  def is_spare?
    !is_strike? && @roll_1 + @roll_2 == 10 ? true : false
  end


end
