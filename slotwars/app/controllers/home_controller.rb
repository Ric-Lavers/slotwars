class HomeController < ApplicationController
  # $thing = Game.new
  def index
    @gamble = Slot.new
    @result = @gamble.spin
    @score = @gamble.score
    # puts "#{@score}".green
    goals = @score
    current_user.score += goals

    puts "#{current_user.score}".green
    # @points.save!
    #
    # # $thing.array += @score
    # @points.update(points: @score)

    # current_user.token.points = @score
    # @points

    current_user.save!




  end
end
