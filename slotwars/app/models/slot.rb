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
    case @result
    when [@a,@a,@a]
      return 50
    when [@k,@k,@k]
      return 30
    when [@q,@q,@q]
      return 10
    else
      return 0
    end
  end

  def totalScore
    @totalscore
  end

end
