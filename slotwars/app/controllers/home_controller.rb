class HomeController < ApplicationController
  # $thing = Game.new
  
  def index
    @gamble = Slot.new
    @result = @gamble.spin
    @score = @gamble.score
    # puts "#{@score}".green
    @points = Token.new(user_id: current_user.id, points: @score)
    # @points.save!
    #
    # # $thing.array += @score
    # @points.update(points: @score)

    # current_user.token.points = @score
    # @points

    current_user.save!




  end
end
