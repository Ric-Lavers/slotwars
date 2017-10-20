class Slot < ApplicationRecord

  def initialize
    @q = "bb-8.png"
    @k = "porg.png"
    @a = "bad_guy.jpeg"
    @cards = [@q,@k,@a]
    @totalscore = 0
  end


  def spin
    result = []
    (0..2).each{|card|
      result << @cards.sample
    }
    @result = result
  end

  def score
    if @result == [@a,@a,@a]
      return 50
    elsif @result == [@k,@k,@k]
      return 35
    elsif @result ==  [@q,@q,@q]
      return 20
    elsif @result.count(@a) == 2
      return 5
    elsif @result.count(@k) == 2
      return 5
    elsif @result.count(@q) == 2
      return 5
    else
      return 0
    end
  end

end
