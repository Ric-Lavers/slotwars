class HomeController < ApplicationController
  def index
    @gamble = Slot.new
    @result = @gamble.spin
    @score = @gamble.score

    current_user.token = @score

    current_user.save!
  end
end
