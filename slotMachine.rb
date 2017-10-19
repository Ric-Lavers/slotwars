
class Slots
  def initialize
    @cards = ["Q","K","A"]
    @score = 0
  end


  def spin
    result = []
    (0..2).each{|card|
      result << @cards.sample
    }
    result
  end

  def score

  end


end


go = 1
while go = 1
  @gamble = Slots.new
  puts "* * *"
  gets.chomp
  result = gamble.spin
  puts result.join(" ")
  case result
  when ["Q","A","K"]
    puts "50 points"
  when ["Q","K","K"]
    puts "40 points"
  when ["Q","Q","Q"]
    puts "30 points"
  when ["J","J","J"]
    puts "20 points"
  when ["10","10","10"]
    puts "10 points"
  else
    puts "NOOOOO points"
  end
  puts "leave? y/n"
  temp = gets.chomp
  if temp == "y"
    go = 2
    break
  end
end
gamble.score
